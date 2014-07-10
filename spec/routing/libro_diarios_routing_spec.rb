require "rails_helper"

RSpec.describe LibroDiariosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/libro_diarios").to route_to("libro_diarios#index")
    end

    it "routes to #new" do
      expect(:get => "/libro_diarios/new").to route_to("libro_diarios#new")
    end

    it "routes to #show" do
      expect(:get => "/libro_diarios/1").to route_to("libro_diarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/libro_diarios/1/edit").to route_to("libro_diarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/libro_diarios").to route_to("libro_diarios#create")
    end

    it "routes to #update" do
      expect(:put => "/libro_diarios/1").to route_to("libro_diarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/libro_diarios/1").to route_to("libro_diarios#destroy", :id => "1")
    end

  end
end
