class PagesController < ApplicationController
	
	def home
		@task = Task.new
	end

	def dashboard
		@task = Task.new
		@tasks = current_user.tasks
	end
end
