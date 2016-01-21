require 'rails_helper'

RSpec.describe "CommnetLikes", type: :request do
  describe "GET /commnet_likes" do
    it "works! (now write some real specs)" do
      get commnet_likes_path
      expect(response).to have_http_status(200)
    end
  end
end
