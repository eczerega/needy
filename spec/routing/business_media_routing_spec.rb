require "rails_helper"

RSpec.describe BusinessMediaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/business_media").to route_to("business_media#index")
    end

    it "routes to #new" do
      expect(:get => "/business_media/new").to route_to("business_media#new")
    end

    it "routes to #show" do
      expect(:get => "/business_media/1").to route_to("business_media#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/business_media/1/edit").to route_to("business_media#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/business_media").to route_to("business_media#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/business_media/1").to route_to("business_media#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/business_media/1").to route_to("business_media#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/business_media/1").to route_to("business_media#destroy", :id => "1")
    end

  end
end
