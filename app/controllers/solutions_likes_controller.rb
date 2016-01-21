class SolutionsLikesController < ApplicationController
  before_action :set_solutions_like, only: [:show, :edit, :update, :destroy]

  # GET /solutions_likes
  def index
    @solutions_likes = SolutionsLike.all
  end

  # GET /solutions_likes/1
  def show
  end

  # GET /solutions_likes/new
  def new
    @solutions_like = SolutionsLike.new
  end

  # GET /solutions_likes/1/edit
  def edit
  end

  # POST /solutions_likes
  def create
    @solutions_like = SolutionsLike.new(solutions_like_params)

    if @solutions_like.save
      redirect_to @solutions_like, notice: 'Solutions like was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solutions_likes/1
  def update
    if @solutions_like.update(solutions_like_params)
      redirect_to @solutions_like, notice: 'Solutions like was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solutions_likes/1
  def destroy
    @solutions_like.destroy
    redirect_to solutions_likes_url, notice: 'Solutions like was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solutions_like
      @solutions_like = SolutionsLike.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solutions_like_params
      params.require(:solutions_like).permit(:user_id, :integer, :solution_id, :integer, :value, :string)
    end
end
