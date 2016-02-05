require 'rails_helper'

RSpec.describe "SolutionsLikes", type: :request do
  describe "GET /solutions_likes" do
    it "works! (now write some real specs)" do
      get solutions_likes_path
      expect(response).to have_http_status(200)
    end
  end
end
