require 'rails_helper'

RSpec.describe "Sessions" do
	it "signs user in and out" do
		user = create(:user)
		
		sign_in user
		get root_path
		expect(controller.current_user).to_not eq(nil)
		
		sign_out user
		get root_path
		expect(controller.current_user).to be_nil
	end
	
end