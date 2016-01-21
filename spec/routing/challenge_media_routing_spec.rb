require "rails_helper"

RSpec.describe ChallengeMediaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/challenge_media").to route_to("challenge_media#index")
    end

    it "routes to #new" do
      expect(:get => "/challenge_media/new").to route_to("challenge_media#new")
    end

    it "routes to #show" do
      expect(:get => "/challenge_media/1").to route_to("challenge_media#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/challenge_media/1/edit").to route_to("challenge_media#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/challenge_media").to route_to("challenge_media#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/challenge_media/1").to route_to("challenge_media#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/challenge_media/1").to route_to("challenge_media#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/challenge_media/1").to route_to("challenge_media#destroy", :id => "1")
    end

  end
end
