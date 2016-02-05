class CommnetLikesController < ApplicationController
  before_action :set_commnet_like, only: [:show, :edit, :update, :destroy]

  # GET /commnet_likes
  def index
    @commnet_likes = CommnetLike.all
  end

  # GET /commnet_likes/1
  def show
  end

  # GET /commnet_likes/new
  def new
    @commnet_like = CommnetLike.new
  end

  # GET /commnet_likes/1/edit
  def edit
  end

  # POST /commnet_likes
  def create
    @commnet_like = CommnetLike.new(commnet_like_params)

    if @commnet_like.save
      redirect_to @commnet_like, notice: 'Commnet like was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /commnet_likes/1
  def update
    if @commnet_like.update(commnet_like_params)
      redirect_to @commnet_like, notice: 'Commnet like was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /commnet_likes/1
  def destroy
    @commnet_like.destroy
    redirect_to commnet_likes_url, notice: 'Commnet like was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commnet_like
      @commnet_like = CommnetLike.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commnet_like_params
      params.require(:commnet_like).permit(:commnets_id, :integer, :value, :integer, :user_id, :integer)
    end
end
