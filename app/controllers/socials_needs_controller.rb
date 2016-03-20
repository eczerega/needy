class SocialsNeedsController < ApplicationController
  before_action :set_socials_need, only: [:show, :edit, :update, :destroy]
  layout false
  # GET /socials_needs
  def index
    @socials_needs = SocialsNeed.all
  end

  # GET /socials_needs/1
  def show
  end

  # GET /socials_needs/new
  def new
    @socials_need = SocialsNeed.new
    @socials_need_image = SocialsNeedImage.new
  end

  # GET /socials_needs/1/edit
  def edit
  end

  def filter
    @name = params[:name]
    @category = params[:category]
    @filter = params[:filter]
    

      
      puts "name= "+@name
      begin
        puts "category= "+Category.where(:name=>@category).take.id.to_s
        @category =  Category.where(:name=>@category).take.id
      rescue Exception => e
        @category = "all"
      end


      puts "filter= "+@filter
      if @name=="all" &&  @category=="all" && @filter == "all"
        @socials_needs = SocialsNeed.all

      elsif @name!="all" &&  @category=="all" && @filter == "all"
        @socials_needs = SocialsNeed.where("name LIKE ?", "%#{@name}%")

      elsif @name!="all" &&  @category!="all" && @filter == "all"
        @socials_needs = SocialsNeed.where("name LIKE ?", "%#{@name}%").where(:category_id =>@category)
 
      elsif @name=="all" &&  @category!="all" && @filter == "all"
        @socials_needs = SocialsNeed.where(:category_id => @category)

      elsif @name=="all" &&  @category=="all" && @filter == "all"
        @socials_needs = SocialsNeed.where("name LIKE ?", "%#{@name}%")

      else
         @socials_needs = SocialsNeed.all
      end
  end

  # POST /socials_needs
  def create
    if current_user != nil
      @socials_need = SocialsNeed.new(socials_need_params)
      @socials_need.user_id = current_user.id
      @category_id = params[:socials_need][:category_id].strip.delete("\n").delete("\r")
    
      begin
        @category_id= Category.where(:name => @category_id).take
        @category_id = @category_id.id
        puts "ID:  " + @category_id.to_s
        @socials_need.category_id = @category_id
      rescue Exception => e
        @category_id = 0
      end
      @success="ASDASDAS"
      if @socials_need.save
        @need_id=@socials_need.id
        @success = true
            respond_to do |format|
              format.html {}
              format.json {}
              format.js
            end
        #redirect_to @socials_need, notice: 'Socials need was successfully created.'
     

      else
        render :new
      end
    else
      redirect_to root_path
    end
  end

  # PATCH/PUT /socials_needs/1
  def update
    if @socials_need.update(socials_need_params)
      redirect_to @socials_need, notice: 'Socials need was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /socials_needs/1
  def destroy
    @socials_need.destroy
    redirect_to socials_needs_url, notice: 'Socials need was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socials_need
      @socials_need = SocialsNeed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def socials_need_params
      params.require(:socials_need).permit(:user_id, :integer, :name, :string, :description, :string, :latitude, :integer, :longitude, :integer, :address, :string, :category_id)
    end

end
