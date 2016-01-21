require "rails_helper"

RSpec.describe SocialsNeedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/socials_needs").to route_to("socials_needs#index")
    end

    it "routes to #new" do
      expect(:get => "/socials_needs/new").to route_to("socials_needs#new")
    end

    it "routes to #show" do
      expect(:get => "/socials_needs/1").to route_to("socials_needs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/socials_needs/1/edit").to route_to("socials_needs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/socials_needs").to route_to("socials_needs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/socials_needs/1").to route_to("socials_needs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/socials_needs/1").to route_to("socials_needs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/socials_needs/1").to route_to("socials_needs#destroy", :id => "1")
    end

  end
end
