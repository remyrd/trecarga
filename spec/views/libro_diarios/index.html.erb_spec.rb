require 'rails_helper'

RSpec.describe "libro_diarios/index", :type => :view do
  before(:each) do
    assign(:libro_diarios, [
      LibroDiario.create!(),
      LibroDiario.create!()
    ])
  end

  it "renders a list of libro_diarios" do
    render
  end
end
