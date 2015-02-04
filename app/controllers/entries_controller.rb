class EntriesController < ApplicationController
	def show
		@project = Project.find(params[:project_id])
		@entries = @project.entries
  	end

  	def new
  		@project = Project.find(params[:project_id])
  		@entries = @project.entries.new
  	end
end
