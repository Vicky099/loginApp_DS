require 'rails_helper'

RSpec.describe "Portals" do

	describe "GET Portals#index" do
		it "return list of users" do

			#factory to generate user
			user = create(:user)

			# check authenticated user
			sign_in user
			get root_path
			
			#get all users by calling portals index
			get portals_path

			#check response from /portals
			expect(response).to be_successful 
		end
	end

end