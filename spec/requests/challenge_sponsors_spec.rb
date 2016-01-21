require 'rails_helper'

RSpec.describe "ChallengeSponsors", type: :request do
  describe "GET /challenge_sponsors" do
    it "works! (now write some real specs)" do
      get challenge_sponsors_path
      expect(response).to have_http_status(200)
    end
  end
end
