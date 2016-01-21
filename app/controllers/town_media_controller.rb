class TownMediaController < ApplicationController
  before_action :set_town_medium, only: [:show, :edit, :update, :destroy]

  # GET /town_media
  def index
    @town_media = TownMedium.all
  end

  # GET /town_media/1
  def show
  end

  # GET /town_media/new
  def new
    @town_medium = TownMedium.new
  end

  # GET /town_media/1/edit
  def edit
  end

  # POST /town_media
  def create
    @town_medium = TownMedium.new(town_medium_params)

    if @town_medium.save
      redirect_to @town_medium, notice: 'Town medium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /town_media/1
  def update
    if @town_medium.update(town_medium_params)
      redirect_to @town_medium, notice: 'Town medium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /town_media/1
  def destroy
    @town_medium.destroy
    redirect_to town_media_url, notice: 'Town medium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_medium
      @town_medium = TownMedium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def town_medium_params
      params.require(:town_medium).permit(:social_need_id, :integer, :content_url, :string, :content_type, :integer)
    end
end
