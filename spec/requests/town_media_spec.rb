require 'rails_helper'

RSpec.describe "TownMedia", type: :request do
  describe "GET /town_media" do
    it "works! (now write some real specs)" do
      get town_media_path
      expect(response).to have_http_status(200)
    end
  end
end
