require 'rails_helper'

RSpec.describe "LibroDiarios", :type => :request do
  describe "GET /libro_diarios" do
    it "works! (now write some real specs)" do
      get libro_diarios_path
      expect(response.status).to be(200)
    end
  end
end
