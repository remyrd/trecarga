require "rails_helper"

RSpec.describe PlanCuentaController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/plan_cuenta").to route_to("plan_cuenta#index")
    end

    it "routes to #new" do
      expect(:get => "/plan_cuenta/new").to route_to("plan_cuenta#new")
    end

    it "routes to #show" do
      expect(:get => "/plan_cuenta/1").to route_to("plan_cuenta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/plan_cuenta/1/edit").to route_to("plan_cuenta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/plan_cuenta").to route_to("plan_cuenta#create")
    end

    it "routes to #update" do
      expect(:put => "/plan_cuenta/1").to route_to("plan_cuenta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/plan_cuenta/1").to route_to("plan_cuenta#destroy", :id => "1")
    end

  end
end
