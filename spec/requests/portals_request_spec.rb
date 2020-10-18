require 'rails_helper'

RSpec.describe "Portals" do
	describe "GET sessions#new" do
		it "signs user in" do
			user = create(:user)
			
			sign_in user
			get root_path
			expect(controller.current_user).to_not eq(nil)
		end

		it "get users data" do

		end
	end
end