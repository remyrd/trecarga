require 'rails_helper'

RSpec.describe "plan_cuenta/show", :type => :view do
  before(:each) do
    @plan_cuentum = assign(:plan_cuentum, PlanCuentum.create!(
      :codificacion => "MyText",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
