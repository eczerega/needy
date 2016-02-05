class TownNeedsController < ApplicationController
  before_action :set_town_need, only: [:show, :edit, :update, :destroy]

  # GET /town_needs
  def index
    @town_needs = TownNeed.all
  end

  # GET /town_needs/1
  def show
  end

  # GET /town_needs/new
  def new
    @town_need = TownNeed.new
  end

  # GET /town_needs/1/edit
  def edit
  end

  # POST /town_needs
  def create
    @town_need = TownNeed.new(town_need_params)

    if @town_need.save
      redirect_to @town_need, notice: 'Town need was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /town_needs/1
  def update
    if @town_need.update(town_need_params)
      redirect_to @town_need, notice: 'Town need was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /town_needs/1
  def destroy
    @town_need.destroy
    redirect_to town_needs_url, notice: 'Town need was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_need
      @town_need = TownNeed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def town_need_params
      params.require(:town_need).permit(:user_id, :integer, :name, :string, :description, :string, :latitude, :integer, :longitude, :integer, :address, :string)
    end
end
