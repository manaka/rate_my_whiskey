require "rails_helper"

RSpec.describe ScoreTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/score_types").to route_to("score_types#index")
    end

    it "routes to #new" do
      expect(get: "/score_types/new").to route_to("score_types#new")
    end

    it "routes to #show" do
      expect(get: "/score_types/1").to route_to("score_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/score_types/1/edit").to route_to("score_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/score_types").to route_to("score_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/score_types/1").to route_to("score_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/score_types/1").to route_to("score_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/score_types/1").to route_to("score_types#destroy", id: "1")
    end
  end
end
