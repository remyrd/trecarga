require 'rails_helper'

RSpec.describe "plan_cuenta/show", :type => :view do
  before(:each) do
    @plan_cuentum = assign(:plan_cuentum, PlanCuentum.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
