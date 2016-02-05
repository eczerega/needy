require "rails_helper"

RSpec.describe SolutionMediaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/solution_media").to route_to("solution_media#index")
    end

    it "routes to #new" do
      expect(:get => "/solution_media/new").to route_to("solution_media#new")
    end

    it "routes to #show" do
      expect(:get => "/solution_media/1").to route_to("solution_media#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/solution_media/1/edit").to route_to("solution_media#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/solution_media").to route_to("solution_media#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/solution_media/1").to route_to("solution_media#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/solution_media/1").to route_to("solution_media#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/solution_media/1").to route_to("solution_media#destroy", :id => "1")
    end

  end
end
