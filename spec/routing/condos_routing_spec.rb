require "rails_helper"

RSpec.describe CondosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/condos").to route_to("condos#index")
    end

    it "routes to #new" do
      expect(:get => "/condos/new").to route_to("condos#new")
    end

    it "routes to #show" do
      expect(:get => "/condos/1").to route_to("condos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/condos/1/edit").to route_to("condos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/condos").to route_to("condos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/condos/1").to route_to("condos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/condos/1").to route_to("condos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/condos/1").to route_to("condos#destroy", :id => "1")
    end

  end
end
