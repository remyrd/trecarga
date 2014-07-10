require 'rails_helper'

RSpec.describe "libro_diarios/new", :type => :view do
  before(:each) do
    assign(:libro_diario, LibroDiario.new(
      :tipo_cambio => "MyText",
      :cuenta => "MyText",
      :deber => "",
      :haber => "",
      :glosario => "MyText",
      :obsoleto => false,
      :tipo => 1
    ))
  end

  it "renders new libro_diario form" do
    render

    assert_select "form[action=?][method=?]", libro_diarios_path, "post" do

      assert_select "textarea#libro_diario_tipo_cambio[name=?]", "libro_diario[tipo_cambio]"

      assert_select "textarea#libro_diario_cuenta[name=?]", "libro_diario[cuenta]"

      assert_select "input#libro_diario_deber[name=?]", "libro_diario[deber]"

      assert_select "input#libro_diario_haber[name=?]", "libro_diario[haber]"

      assert_select "textarea#libro_diario_glosario[name=?]", "libro_diario[glosario]"

      assert_select "input#libro_diario_obsoleto[name=?]", "libro_diario[obsoleto]"

      assert_select "input#libro_diario_tipo[name=?]", "libro_diario[tipo]"
    end
  end
end
