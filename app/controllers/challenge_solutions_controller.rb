class ChallengeSolutionsController < ApplicationController
  before_action :set_challenge_solution, only: [:show, :edit, :update, :destroy]

  # GET /challenge_solutions
  def index
    @challenge_solutions = ChallengeSolution.all
  end

  # GET /challenge_solutions/1
  def show
  end

  # GET /challenge_solutions/new
  def new
    @challenge_solution = ChallengeSolution.new
  end

  # GET /challenge_solutions/1/edit
  def edit
  end

  # POST /challenge_solutions
  def create
    @challenge_solution = ChallengeSolution.new(challenge_solution_params)

    if @challenge_solution.save
      redirect_to @challenge_solution, notice: 'Challenge solution was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /challenge_solutions/1
  def update
    if @challenge_solution.update(challenge_solution_params)
      redirect_to @challenge_solution, notice: 'Challenge solution was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /challenge_solutions/1
  def destroy
    @challenge_solution.destroy
    redirect_to challenge_solutions_url, notice: 'Challenge solution was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_solution
      @challenge_solution = ChallengeSolution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challenge_solution_params
      params.require(:challenge_solution).permit(:user_id, :integer, :name, :string, :challenge_id, :integer, :destription, :string)
    end
end
