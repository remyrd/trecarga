require 'rails_helper'

RSpec.describe "libro_diarios/index", :type => :view do
  before(:each) do
    assign(:libro_diarios, [
      LibroDiario.create!(
        :tipo_cambio => "MyText",
        :cuenta => "MyText",
        :deber => "",
        :haber => "",
        :glosario => "MyText",
        :obsoleto => false,
        :tipo => 1
      ),
      LibroDiario.create!(
        :tipo_cambio => "MyText",
        :cuenta => "MyText",
        :deber => "",
        :haber => "",
        :glosario => "MyText",
        :obsoleto => false,
        :tipo => 1
      )
    ])
  end

  it "renders a list of libro_diarios" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
