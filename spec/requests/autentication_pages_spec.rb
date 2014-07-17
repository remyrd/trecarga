require 'spec_helper'
describe "Authentication" do
	subject { page }

	describe "signin page" do
		before { visit signin_path }

		it { should have_content ('Sign in') }
		it { should have_title('Sign in') }
	end
end




#require 'rails_helper'

#RSpec.describe "AutenticationPages", :type => :request do
#  describe "GET /autentication_pages" do
#    it "works! (now write some real specs)" do
#      get autentication_pages_index_path
#      expect(response.status).to be(200)
#    end
#  end
#end
