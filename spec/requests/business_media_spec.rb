require 'rails_helper'

RSpec.describe "BusinessMedia", type: :request do
  describe "GET /business_media" do
    it "works! (now write some real specs)" do
      get business_media_path
      expect(response).to have_http_status(200)
    end
  end
end
