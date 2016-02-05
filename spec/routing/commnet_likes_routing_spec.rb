require "rails_helper"

RSpec.describe CommnetLikesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/commnet_likes").to route_to("commnet_likes#index")
    end

    it "routes to #new" do
      expect(:get => "/commnet_likes/new").to route_to("commnet_likes#new")
    end

    it "routes to #show" do
      expect(:get => "/commnet_likes/1").to route_to("commnet_likes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/commnet_likes/1/edit").to route_to("commnet_likes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/commnet_likes").to route_to("commnet_likes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/commnet_likes/1").to route_to("commnet_likes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/commnet_likes/1").to route_to("commnet_likes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/commnet_likes/1").to route_to("commnet_likes#destroy", :id => "1")
    end

  end
end
