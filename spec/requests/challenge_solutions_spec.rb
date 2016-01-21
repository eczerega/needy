require 'rails_helper'

RSpec.describe "ChallengeSolutions", type: :request do
  describe "GET /challenge_solutions" do
    it "works! (now write some real specs)" do
      get challenge_solutions_path
      expect(response).to have_http_status(200)
    end
  end
end
