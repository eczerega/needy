require 'rails_helper'

RSpec.describe "SolutionMedia", type: :request do
  describe "GET /solution_media" do
    it "works! (now write some real specs)" do
      get solution_media_path
      expect(response).to have_http_status(200)
    end
  end
end
