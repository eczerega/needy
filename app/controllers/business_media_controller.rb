class BusinessMediaController < ApplicationController
  before_action :set_business_medium, only: [:show, :edit, :update, :destroy]

  # GET /business_media
  def index
    @business_media = BusinessMedium.all
  end

  # GET /business_media/1
  def show
  end

  # GET /business_media/new
  def new
    @business_medium = BusinessMedium.new
  end

  # GET /business_media/1/edit
  def edit
  end

  # POST /business_media
  def create
    @business_medium = BusinessMedium.new(business_medium_params)

    if @business_medium.save
      redirect_to @business_medium, notice: 'Business medium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /business_media/1
  def update
    if @business_medium.update(business_medium_params)
      redirect_to @business_medium, notice: 'Business medium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /business_media/1
  def destroy
    @business_medium.destroy
    redirect_to business_media_url, notice: 'Business medium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_medium
      @business_medium = BusinessMedium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_medium_params
      params.require(:business_medium).permit(:social_need_id, :integer, :content_url, :string, :content_type, :integer)
    end
end
