require 'rails_helper'

RSpec.describe "plan_cuenta/index", :type => :view do
  before(:each) do
    assign(:plan_cuenta, [
      PlanCuentum.create!(
        :codificacion => "MyText",
        :descripcion => "MyText"
      ),
      PlanCuentum.create!(
        :codificacion => "MyText",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of plan_cuenta" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
