require "rails_helper"

RSpec.describe TownMediaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/town_media").to route_to("town_media#index")
    end

    it "routes to #new" do
      expect(:get => "/town_media/new").to route_to("town_media#new")
    end

    it "routes to #show" do
      expect(:get => "/town_media/1").to route_to("town_media#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/town_media/1/edit").to route_to("town_media#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/town_media").to route_to("town_media#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/town_media/1").to route_to("town_media#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/town_media/1").to route_to("town_media#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/town_media/1").to route_to("town_media#destroy", :id => "1")
    end

  end
end
