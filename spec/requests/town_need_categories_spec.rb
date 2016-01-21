require 'rails_helper'

RSpec.describe "TownNeedCategories", type: :request do
  describe "GET /town_need_categories" do
    it "works! (now write some real specs)" do
      get town_need_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
