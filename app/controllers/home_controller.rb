class HomeController < ApplicationController
  
  # caches_page :index,:contact, :expires_in => 30.minutes

  layout false
  def index
    @social_needs = SocialsNeed.first(3)
    @categories= Category.all
  end

  # The view to send a contact email
  def contact
  end
  # To send the contact email
  def send_contact
  	if params[:message]&&params[:email]
  		UserMailer.contact_email(params[:first_name].to_s, params[:email].to_s, "Contacto Sitio", params[:message].to_s).deliver
  		UserMailer.feedback(params[:first_name].to_s, params[:email].to_s).deliver
  		return redirect_to root_path, notice: 'Hemos recibido tu correo. Muchas gracias!'
  	end
  	return redirect_to root_path, notice: 'Se ha producido un error. Intenta de nuevo.'
  end

end
