require 'rails_helper'

RSpec.describe "plan_cuenta/index", :type => :view do
  before(:each) do
    assign(:plan_cuenta, [
      PlanCuentum.create!(),
      PlanCuentum.create!()
    ])
  end

  it "renders a list of plan_cuenta" do
    render
  end
end
