require "rails_helper"

RSpec.describe SocialsNeedImagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/socials_need_images").to route_to("socials_need_images#index")
    end

    it "routes to #new" do
      expect(:get => "/socials_need_images/new").to route_to("socials_need_images#new")
    end

    it "routes to #show" do
      expect(:get => "/socials_need_images/1").to route_to("socials_need_images#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/socials_need_images/1/edit").to route_to("socials_need_images#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/socials_need_images").to route_to("socials_need_images#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/socials_need_images/1").to route_to("socials_need_images#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/socials_need_images/1").to route_to("socials_need_images#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/socials_need_images/1").to route_to("socials_need_images#destroy", :id => "1")
    end

  end
end
