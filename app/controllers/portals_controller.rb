class PortalsController < ApplicationController
	
	def index
		@users = User.all
	end
end
