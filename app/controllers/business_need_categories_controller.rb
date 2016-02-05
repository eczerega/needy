class BusinessNeedCategoriesController < ApplicationController
  before_action :set_business_need_category, only: [:show, :edit, :update, :destroy]

  # GET /business_need_categories
  def index
    @business_need_categories = BusinessNeedCategory.all
  end

  # GET /business_need_categories/1
  def show
  end

  # GET /business_need_categories/new
  def new
    @business_need_category = BusinessNeedCategory.new
  end

  # GET /business_need_categories/1/edit
  def edit
  end

  # POST /business_need_categories
  def create
    @business_need_category = BusinessNeedCategory.new(business_need_category_params)

    if @business_need_category.save
      redirect_to @business_need_category, notice: 'Business need category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /business_need_categories/1
  def update
    if @business_need_category.update(business_need_category_params)
      redirect_to @business_need_category, notice: 'Business need category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /business_need_categories/1
  def destroy
    @business_need_category.destroy
    redirect_to business_need_categories_url, notice: 'Business need category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_need_category
      @business_need_category = BusinessNeedCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_need_category_params
      params.require(:business_need_category).permit(:category_id, :integer, :social_need_id, :integer)
    end
end
