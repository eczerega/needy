require 'rails_helper'

RSpec.describe "ChallengeMedia", type: :request do
  describe "GET /challenge_media" do
    it "works! (now write some real specs)" do
      get challenge_media_path
      expect(response).to have_http_status(200)
    end
  end
end
