require 'rails_helper'

RSpec.describe "SocialNeedCategories", type: :request do
  describe "GET /social_need_categories" do
    it "works! (now write some real specs)" do
      get social_need_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
