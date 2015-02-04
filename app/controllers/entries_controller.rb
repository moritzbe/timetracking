class EntriesController < ApplicationController
	def show
		@project = Project.find(params[:project_id])
		@entry = @project.entries
  	end

  	def new
  		@project = Project.find(params[:project_id])
  		@entry = @project.entries.new
  	end

  	def index
  		@project = Project.find(params[:project_id])
  		@entries = @project.entries	
  	end

  	def create
  		@project = Project.find(params[:project_id])
  		@entry = @project.entries.new entry_params
  		if @entry.save
  			redirect_to action: "new"
  		else
  			render "new"
  		end
  	end

  	private
  	def entry_params
  		params.require(:entry).permit(:hours, :minutes, :date, :comments)
  	end
end
