require 'rails_helper'

RSpec.describe "plan_cuenta/new", :type => :view do
  before(:each) do
    assign(:plan_cuentum, PlanCuentum.new(
      :codificacion => "MyText",
      :descripcion => "MyText"
    ))
  end

  it "renders new plan_cuentum form" do
    render

    assert_select "form[action=?][method=?]", plan_cuenta_path, "post" do

      assert_select "textarea#plan_cuentum_codificacion[name=?]", "plan_cuentum[codificacion]"

      assert_select "textarea#plan_cuentum_descripcion[name=?]", "plan_cuentum[descripcion]"
    end
  end
end
