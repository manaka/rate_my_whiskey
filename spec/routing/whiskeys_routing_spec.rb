require "rails_helper"

RSpec.describe WhiskeysController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/whiskeys").to route_to("whiskeys#index")
    end

    it "routes to #new" do
      expect(get: "/whiskeys/new").to route_to("whiskeys#new")
    end

    it "routes to #show" do
      expect(get: "/whiskeys/1").to route_to("whiskeys#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/whiskeys/1/edit").to route_to("whiskeys#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/whiskeys").to route_to("whiskeys#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/whiskeys/1").to route_to("whiskeys#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/whiskeys/1").to route_to("whiskeys#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/whiskeys/1").to route_to("whiskeys#destroy", id: "1")
    end
  end
end
