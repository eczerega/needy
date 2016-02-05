class SocialNeedCategoriesController < ApplicationController
  before_action :set_social_need_category, only: [:show, :edit, :update, :destroy]

  # GET /social_need_categories
  def index
    @social_need_categories = SocialNeedCategory.all
  end

  # GET /social_need_categories/1
  def show
  end

  # GET /social_need_categories/new
  def new
    @social_need_category = SocialNeedCategory.new
  end

  # GET /social_need_categories/1/edit
  def edit
  end

  # POST /social_need_categories
  def create
    @social_need_category = SocialNeedCategory.new(social_need_category_params)

    if @social_need_category.save
      redirect_to @social_need_category, notice: 'Social need category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_need_categories/1
  def update
    if @social_need_category.update(social_need_category_params)
      redirect_to @social_need_category, notice: 'Social need category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_need_categories/1
  def destroy
    @social_need_category.destroy
    redirect_to social_need_categories_url, notice: 'Social need category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_need_category
      @social_need_category = SocialNeedCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_need_category_params
      params.require(:social_need_category).permit(:category_id, :integer, :social_need_id, :integer)
    end
end
