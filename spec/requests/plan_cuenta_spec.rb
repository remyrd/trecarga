require 'rails_helper'

RSpec.describe "PlanCuenta", :type => :request do
  describe "GET /plan_cuenta" do
    it "works! (now write some real specs)" do
      get plan_cuenta_path
      expect(response.status).to be(200)
    end
  end
end
