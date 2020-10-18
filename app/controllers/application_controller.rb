class ApplicationController < ActionController::Base
	before_action :check_user_role
	before_action :authenticate_user!
	
	def after_sign_in_path_for(resources)
		portals_path
	end

	def after_sign_out_path_for(resources)
		new_user_session_path
	end
	
	def check_user_role
		if current_user
		  	unless current_user.admin?
				flash[:alert] = "You dont have permission to access this tab. Please contact Administrator."
				sign_out(current_user)
				redirect_to new_user_session_path
		  	end
		end
	end
end
