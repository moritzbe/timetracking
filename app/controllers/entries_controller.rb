class EntriesController < ApplicationController
	def show
		@project = Project.find(params[:project_id])
		@entries = @project.entries
  	end
end
