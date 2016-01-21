class SocialsNeedsController < ApplicationController
  before_action :set_socials_need, only: [:show, :edit, :update, :destroy]

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
  end

  # GET /socials_needs/1/edit
  def edit
  end

  # POST /socials_needs
  def create
    @socials_need = SocialsNeed.new(socials_need_params)

    if @socials_need.save
      redirect_to @socials_need, notice: 'Socials need was successfully created.'
    else
      render :new
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
      params.require(:socials_need).permit(:user_id, :integer, :name, :string, :description, :string, :latitude, :integer, :longitude, :integer, :address, :string)
    end
end
