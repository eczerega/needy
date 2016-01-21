class BusinessNeedsController < ApplicationController
  before_action :set_business_need, only: [:show, :edit, :update, :destroy]

  # GET /business_needs
  def index
    @business_needs = BusinessNeed.all
  end

  # GET /business_needs/1
  def show
  end

  # GET /business_needs/new
  def new
    @business_need = BusinessNeed.new
  end

  # GET /business_needs/1/edit
  def edit
  end

  # POST /business_needs
  def create
    @business_need = BusinessNeed.new(business_need_params)

    if @business_need.save
      redirect_to @business_need, notice: 'Business need was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /business_needs/1
  def update
    if @business_need.update(business_need_params)
      redirect_to @business_need, notice: 'Business need was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /business_needs/1
  def destroy
    @business_need.destroy
    redirect_to business_needs_url, notice: 'Business need was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_need
      @business_need = BusinessNeed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_need_params
      params.require(:business_need).permit(:user_id, :integer, :name, :string, :description, :string, :latitude, :integer, :longitude, :integer, :address, :string)
    end
end
