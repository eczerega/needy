class SocialMediaController < ApplicationController
  before_action :set_social_medium, only: [:show, :edit, :update, :destroy]

  # GET /social_media
  def index
    @social_media = SocialMedium.all
  end

  # GET /social_media/1
  def show
  end

  # GET /social_media/new
  def new
    @social_medium = SocialMedium.new
  end

  # GET /social_media/1/edit
  def edit
  end

  # POST /social_media
  def create
    @social_medium = SocialMedium.new(social_medium_params)

    if @social_medium.save
      redirect_to @social_medium, notice: 'Social medium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_media/1
  def update
    if @social_medium.update(social_medium_params)
      redirect_to @social_medium, notice: 'Social medium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_media/1
  def destroy
    @social_medium.destroy
    redirect_to social_media_url, notice: 'Social medium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_medium
      @social_medium = SocialMedium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_medium_params
      params.require(:social_medium).permit(:social_need_id, :integer, :content_url, :string, :content_type, :integer)
    end
end
