require 'rails_helper'

RSpec.describe "SocialNeedLikes", type: :request do
  describe "GET /social_need_likes" do
    it "works! (now write some real specs)" do
      get social_need_likes_path
      expect(response).to have_http_status(200)
    end
  end
end