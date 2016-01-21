require "rails_helper"

RSpec.describe BusinessNeedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/business_needs").to route_to("business_needs#index")
    end

    it "routes to #new" do
      expect(:get => "/business_needs/new").to route_to("business_needs#new")
    end

    it "routes to #show" do
      expect(:get => "/business_needs/1").to route_to("business_needs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/business_needs/1/edit").to route_to("business_needs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/business_needs").to route_to("business_needs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/business_needs/1").to route_to("business_needs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/business_needs/1").to route_to("business_needs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/business_needs/1").to route_to("business_needs#destroy", :id => "1")
    end

  end
end
