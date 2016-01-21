require "rails_helper"

RSpec.describe ChallengeSponsorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/challenge_sponsors").to route_to("challenge_sponsors#index")
    end

    it "routes to #new" do
      expect(:get => "/challenge_sponsors/new").to route_to("challenge_sponsors#new")
    end

    it "routes to #show" do
      expect(:get => "/challenge_sponsors/1").to route_to("challenge_sponsors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/challenge_sponsors/1/edit").to route_to("challenge_sponsors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/challenge_sponsors").to route_to("challenge_sponsors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/challenge_sponsors/1").to route_to("challenge_sponsors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/challenge_sponsors/1").to route_to("challenge_sponsors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/challenge_sponsors/1").to route_to("challenge_sponsors#destroy", :id => "1")
    end

  end
end
