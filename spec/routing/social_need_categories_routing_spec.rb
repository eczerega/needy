require "rails_helper"

RSpec.describe SocialNeedCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/social_need_categories").to route_to("social_need_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/social_need_categories/new").to route_to("social_need_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/social_need_categories/1").to route_to("social_need_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/social_need_categories/1/edit").to route_to("social_need_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/social_need_categories").to route_to("social_need_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/social_need_categories/1").to route_to("social_need_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/social_need_categories/1").to route_to("social_need_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/social_need_categories/1").to route_to("social_need_categories#destroy", :id => "1")
    end

  end
end
