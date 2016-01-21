require 'rails_helper'

RSpec.describe "TownNeeds", type: :request do
  describe "GET /town_needs" do
    it "works! (now write some real specs)" do
      get town_needs_path
      expect(response).to have_http_status(200)
    end
  end
end
