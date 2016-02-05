require "rails_helper"

RSpec.describe TownNeedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/town_needs").to route_to("town_needs#index")
    end

    it "routes to #new" do
      expect(:get => "/town_needs/new").to route_to("town_needs#new")
    end

    it "routes to #show" do
      expect(:get => "/town_needs/1").to route_to("town_needs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/town_needs/1/edit").to route_to("town_needs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/town_needs").to route_to("town_needs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/town_needs/1").to route_to("town_needs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/town_needs/1").to route_to("town_needs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/town_needs/1").to route_to("town_needs#destroy", :id => "1")
    end

  end
end
