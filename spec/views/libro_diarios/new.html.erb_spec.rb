require 'rails_helper'

RSpec.describe "libro_diarios/new", :type => :view do
  before(:each) do
    assign(:libro_diario, LibroDiario.new())
  end

  it "renders new libro_diario form" do
    render

    assert_select "form[action=?][method=?]", libro_diarios_path, "post" do
    end
  end
end
