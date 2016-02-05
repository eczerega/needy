class TownNeedCategoriesController < ApplicationController
  before_action :set_town_need_category, only: [:show, :edit, :update, :destroy]

  # GET /town_need_categories
  def index
    @town_need_categories = TownNeedCategory.all
  end

  # GET /town_need_categories/1
  def show
  end

  # GET /town_need_categories/new
  def new
    @town_need_category = TownNeedCategory.new
  end

  # GET /town_need_categories/1/edit
  def edit
  end

  # POST /town_need_categories
  def create
    @town_need_category = TownNeedCategory.new(town_need_category_params)

    if @town_need_category.save
      redirect_to @town_need_category, notice: 'Town need category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /town_need_categories/1
  def update
    if @town_need_category.update(town_need_category_params)
      redirect_to @town_need_category, notice: 'Town need category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /town_need_categories/1
  def destroy
    @town_need_category.destroy
    redirect_to town_need_categories_url, notice: 'Town need category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_need_category
      @town_need_category = TownNeedCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def town_need_category_params
      params.require(:town_need_category).permit(:category_id, :integer, :social_need_id, :integer)
    end
end
