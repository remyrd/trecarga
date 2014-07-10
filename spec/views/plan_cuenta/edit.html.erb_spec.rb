require 'rails_helper'

RSpec.describe "plan_cuenta/edit", :type => :view do
  before(:each) do
    @plan_cuentum = assign(:plan_cuentum, PlanCuentum.create!())
  end

  it "renders the edit plan_cuentum form" do
    render

    assert_select "form[action=?][method=?]", plan_cuentum_path(@plan_cuentum), "post" do
    end
  end
end
