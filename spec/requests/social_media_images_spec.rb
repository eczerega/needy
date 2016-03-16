require 'rails_helper'

RSpec.describe "SocialMediaImages", type: :request do
  describe "GET /social_media_images" do
    it "works! (now write some real specs)" do
      get social_media_images_path
      expect(response).to have_http_status(200)
    end
  end
end
