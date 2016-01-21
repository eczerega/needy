require 'rails_helper'

RSpec.describe "BusinessNeeds", type: :request do
  describe "GET /business_needs" do
    it "works! (now write some real specs)" do
      get business_needs_path
      expect(response).to have_http_status(200)
    end
  end
end
