class ChallengeSponsorsController < ApplicationController
  before_action :set_challenge_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /challenge_sponsors
  def index
    @challenge_sponsors = ChallengeSponsor.all
  end

  # GET /challenge_sponsors/1
  def show
  end

  # GET /challenge_sponsors/new
  def new
    @challenge_sponsor = ChallengeSponsor.new
  end

  # GET /challenge_sponsors/1/edit
  def edit
  end

  # POST /challenge_sponsors
  def create
    @challenge_sponsor = ChallengeSponsor.new(challenge_sponsor_params)

    if @challenge_sponsor.save
      redirect_to @challenge_sponsor, notice: 'Challenge sponsor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /challenge_sponsors/1
  def update
    if @challenge_sponsor.update(challenge_sponsor_params)
      redirect_to @challenge_sponsor, notice: 'Challenge sponsor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /challenge_sponsors/1
  def destroy
    @challenge_sponsor.destroy
    redirect_to challenge_sponsors_url, notice: 'Challenge sponsor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_sponsor
      @challenge_sponsor = ChallengeSponsor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challenge_sponsor_params
      params.require(:challenge_sponsor).permit(:challenge_id, :integer, :sponsor_id, :integer)
    end
end
