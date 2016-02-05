class SolutionMediaController < ApplicationController
  before_action :set_solution_medium, only: [:show, :edit, :update, :destroy]

  # GET /solution_media
  def index
    @solution_media = SolutionMedium.all
  end

  # GET /solution_media/1
  def show
  end

  # GET /solution_media/new
  def new
    @solution_medium = SolutionMedium.new
  end

  # GET /solution_media/1/edit
  def edit
  end

  # POST /solution_media
  def create
    @solution_medium = SolutionMedium.new(solution_medium_params)

    if @solution_medium.save
      redirect_to @solution_medium, notice: 'Solution medium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solution_media/1
  def update
    if @solution_medium.update(solution_medium_params)
      redirect_to @solution_medium, notice: 'Solution medium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /solution_media/1
  def destroy
    @solution_medium.destroy
    redirect_to solution_media_url, notice: 'Solution medium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution_medium
      @solution_medium = SolutionMedium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solution_medium_params
      params.require(:solution_medium).permit(:solution_id, :integer, :content_url, :string, :content_type, :integer)
    end
end
