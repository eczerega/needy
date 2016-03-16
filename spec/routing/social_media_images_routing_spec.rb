require "rails_helper"

RSpec.describe SocialMediaImagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/social_media_images").to route_to("social_media_images#index")
    end

    it "routes to #new" do
      expect(:get => "/social_media_images/new").to route_to("social_media_images#new")
    end

    it "routes to #show" do
      expect(:get => "/social_media_images/1").to route_to("social_media_images#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/social_media_images/1/edit").to route_to("social_media_images#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/social_media_images").to route_to("social_media_images#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/social_media_images/1").to route_to("social_media_images#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/social_media_images/1").to route_to("social_media_images#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/social_media_images/1").to route_to("social_media_images#destroy", :id => "1")
    end

  end
end
