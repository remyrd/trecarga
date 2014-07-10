require 'rails_helper'

RSpec.describe "libro_diarios/show", :type => :view do
  before(:each) do
    @libro_diario = assign(:libro_diario, LibroDiario.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
