class SessionsController < ApplicationController
layout false
  def new
    if current_user
      return redirect_to home_path, :notice => t('notice.sessions.already_in')
    end
    @user = User.new
  end
    
  def create_with_oauth
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path
  end
  def create
    unless verify_recaptcha
      #return redirect_to log_in_path
    end
    @success = false
  	user = User.authenticate(params[:email], params[:password])
    if user&&user.active==true&&!user.deleted
      # we log him in
      puts 'if1'
      session[:user_id] = user.id
      @success=true
      #if he needs to be redirected back, the session[:last_uri] has to be set manually
        respond_to do |format|
          format.js {}
        end
      return 
      if session[:last_uri]
        puts 'ACA ESTOY'
        @success=true
        puts 'if2'
        uri = session[:last_uri]
        session[:last_uri] = nil

        #return redirect_to root_path, :notice => t('notice.sessions.already_in')
      end
      return redirect_to request.referer, :notice => t('notice.sessions.already_in')
    else
      puts 'if3'
      if user && user.active!=true
        puts 'if4'
        user.active=true
        str = t('notice.sessions.activation')
      elsif user && user.deleted!=false
        puts 'if5'
        str = t('notice.sessions.user_not_found')
      else
        puts 'if6'
        str = t('notice.sessions.invalid_pass')
      end
      puts 'if7'
      respond_to do |format|
        format.js {}
      end
        return 
      #return redirect_to log_in_path, notice: str
    end
  end
  
  def destroy
    session[:user_id] = nil
    return redirect_to root_path
  end

  def unsubscribe
    @token = Token.find_by_value(params[:token])
    unless @token
      return redirect_to home_path
    end
    @user = @token.user
    Blacklist.create(:email_to => @user.email, :email_from => params[:from], :global => (params[:from] ? false : true))
    @token.destroy
    redirect_to home_path, notice: t('notice.user.unsubscribe')
  end

  #recover pass
  def recover_pass
  end
  def send_pass_recovery
    user = User.find_by_email params[:email]
    if user
      key = user.tokens.first_or_create
      UserMailer.recover_pass(user, key.value).deliver
      return redirect_to home_path, :notice => t('notice.sessions.recovery')
    else
      return redirect_to recover_pass_path, :notice => t('notice.sessions.user_not_found')
    end
  end
  def change_password
    @token = Token.find_by_value(params[:token])
    unless @token
      return redirect_to home_path, :notice => t('notice.sessions.invalid_link')
    end
    @user = @token.user
    @user.update_attribute(:active, true)
    session[:user_id] = @user.id
  end
  def do_change_password
    @token = Token.find_by_value(params[:token])
    unless @token
      return redirect_to home_path, :notice => t('notice.sessions.invalid_link')
    end
    unless params[:password]!=nil&&params[:password].length>3
      return redirect_to :back, :notice => 'Too short'
    end
    @user = @token.user
    @user.update_attribute :password, params[:password]
    Token.delete @token
    return redirect_to home_path, :notice => t('notice.sessions.pass_changed')
  end
  #end recover pass

end



