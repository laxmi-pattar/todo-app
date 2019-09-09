class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)
		stored_location_for(resource) || pages_dashboard_path
	end


	private

	def layout_by_resource
		if devise_controller?
			"devise"
		else
			"application"
		end
	end
	
end
