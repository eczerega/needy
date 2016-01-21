require 'rails_helper'

RSpec.describe "SocialsNeeds", type: :request do
  describe "GET /socials_needs" do
    it "works! (now write some real specs)" do
      get socials_needs_path
      expect(response).to have_http_status(200)
    end
  end
end
