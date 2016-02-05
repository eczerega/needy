class ChallengeMediaController < ApplicationController
  before_action :set_challenge_medium, only: [:show, :edit, :update, :destroy]

  # GET /challenge_media
  def index
    @challenge_media = ChallengeMedium.all
  end

  # GET /challenge_media/1
  def show
  end

  # GET /challenge_media/new
  def new
    @challenge_medium = ChallengeMedium.new
  end

  # GET /challenge_media/1/edit
  def edit
  end

  # POST /challenge_media
  def create
    @challenge_medium = ChallengeMedium.new(challenge_medium_params)

    if @challenge_medium.save
      redirect_to @challenge_medium, notice: 'Challenge medium was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /challenge_media/1
  def update
    if @challenge_medium.update(challenge_medium_params)
      redirect_to @challenge_medium, notice: 'Challenge medium was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /challenge_media/1
  def destroy
    @challenge_medium.destroy
    redirect_to challenge_media_url, notice: 'Challenge medium was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_medium
      @challenge_medium = ChallengeMedium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challenge_medium_params
      params.require(:challenge_medium).permit(:content_url, :string, :content_type, :string)
    end
end
