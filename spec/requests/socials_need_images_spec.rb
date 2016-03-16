require 'rails_helper'

RSpec.describe "SocialsNeedImages", type: :request do
  describe "GET /socials_need_images" do
    it "works! (now write some real specs)" do
      get socials_need_images_path
      expect(response).to have_http_status(200)
    end
  end
end
