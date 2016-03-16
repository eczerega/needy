class SocialMediaImagesController < ApplicationController
  before_action :set_social_media_image, only: [:show, :edit, :update, :destroy]

  # GET /social_media_images
  def index
    @social_media_images = SocialMediaImage.all
  end

  # GET /social_media_images/1
  def show
  end

  # GET /social_media_images/new
  def new
    @social_media_image = SocialMediaImage.new
  end

  # GET /social_media_images/1/edit
  def edit
  end

  # POST /social_media_images
  def create
    @social_media_image = SocialMediaImage.new(social_media_image_params)

    if @social_media_image.save
      redirect_to @social_media_image, notice: 'Social media image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_media_images/1
  def update
    if @social_media_image.update(social_media_image_params)
      redirect_to @social_media_image, notice: 'Social media image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_media_images/1
  def destroy
    @social_media_image.destroy
    redirect_to social_media_images_url, notice: 'Social media image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_media_image
      @social_media_image = SocialMediaImage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_media_image_params
      params.require(:social_media_image).permit(:socials_need_id, :image)
    end
end
