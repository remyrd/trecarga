require 'rails_helper'

RSpec.describe "plan_cuenta/new", :type => :view do
  before(:each) do
    assign(:plan_cuentum, PlanCuentum.new())
  end

  it "renders new plan_cuentum form" do
    render

    assert_select "form[action=?][method=?]", plan_cuenta_path, "post" do
    end
  end
end
