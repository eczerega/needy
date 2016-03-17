class SocialsNeedImagesController < ApplicationController
  before_action :set_socials_need_image, only: [:show, :edit, :update, :destroy]

  skip_before_filter :verify_authenticity_token
  layout false
  # GET /socials_need_images
  def index
    @socials_need_images = SocialsNeedImage.all
  end

  # GET /socials_need_images/1
  def show
  end

  # GET /socials_need_images/new
  def new
    @socials_need_image = SocialsNeedImage.new
  end

  # GET /socials_need_images/1/edit
  def edit
  end

  # POST /socials_need_images
  def create
    @socials_need_image = SocialsNeedImage.new(socials_need_image_params)
    if @socials_need_image.save
            respond_to do |format|
              format.html {}
              format.json {}
              format.js{}
            end
    else
            respond_to do |format|
              format.html {}
              format.json {}
              format.js{}
            end
    end
  end

  # PATCH/PUT /socials_need_images/1
  def update
    if @socials_need_image.update(socials_need_image_params)
      redirect_to @socials_need_image, notice: 'Socials need image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /socials_need_images/1
  def destroy
    @socials_need_image.destroy
    redirect_to socials_need_images_url, notice: 'Socials need image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socials_need_image
      @socials_need_image = SocialsNeedImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def socials_need_image_params
      params.require(:socials_need_image).permit(:socials_need_id, :image_content)
    end
end
