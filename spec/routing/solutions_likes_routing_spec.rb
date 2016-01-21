require "rails_helper"

RSpec.describe SolutionsLikesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/solutions_likes").to route_to("solutions_likes#index")
    end

    it "routes to #new" do
      expect(:get => "/solutions_likes/new").to route_to("solutions_likes#new")
    end

    it "routes to #show" do
      expect(:get => "/solutions_likes/1").to route_to("solutions_likes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/solutions_likes/1/edit").to route_to("solutions_likes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/solutions_likes").to route_to("solutions_likes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/solutions_likes/1").to route_to("solutions_likes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/solutions_likes/1").to route_to("solutions_likes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/solutions_likes/1").to route_to("solutions_likes#destroy", :id => "1")
    end

  end
end
