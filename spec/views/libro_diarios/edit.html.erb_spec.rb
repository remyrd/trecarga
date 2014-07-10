require 'rails_helper'

RSpec.describe "libro_diarios/edit", :type => :view do
  before(:each) do
    @libro_diario = assign(:libro_diario, LibroDiario.create!())
  end

  it "renders the edit libro_diario form" do
    render

    assert_select "form[action=?][method=?]", libro_diario_path(@libro_diario), "post" do
    end
  end
end
