require 'rails_helper'

RSpec.describe "libro_diarios/show", :type => :view do
  before(:each) do
    @libro_diario = assign(:libro_diario, LibroDiario.create!(
      :tipo_cambio => "MyText",
      :cuenta => "MyText",
      :deber => "",
      :haber => "",
      :glosario => "MyText",
      :obsoleto => false,
      :tipo => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
