class SocialNeedLikesController < ApplicationController
  before_action :set_social_need_like, only: [:show, :edit, :update, :destroy]

  # GET /social_need_likes
  def index
    @social_need_likes = SocialNeedLike.all
  end

  # GET /social_need_likes/1
  def show
  end

  # GET /social_need_likes/new
  def new
    @social_need_like = SocialNeedLike.new
  end

  # GET /social_need_likes/1/edit
  def edit
  end

  # POST /social_need_likes
  def create
    @social_need_like = SocialNeedLike.new(social_need_like_params)

    if @social_need_like.save
      redirect_to @social_need_like, notice: 'Social need like was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_need_likes/1
  def update
    if @social_need_like.update(social_need_like_params)
      redirect_to @social_need_like, notice: 'Social need like was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_need_likes/1
  def destroy
    @social_need_like.destroy
    redirect_to social_need_likes_url, notice: 'Social need like was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_need_like
      @social_need_like = SocialNeedLike.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_need_like_params
      params.require(:social_need_like).permit(:user_id, :integer, :social_need_id, :integer, :value, :integer)
    end
end
