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

    def destroy
      @project = Project.find(params[:project_id])
      @entry = @project.entries.find(params[:id])
      @entry.destroy
      redirect_to ("http://localhost:3000/projects/"+"#{params[:project_id]}"+"/entries")
    end

    def update
      @project = Project.find(params[:project_id])
      @entry = @project.entries.find(params[:id])
      @entry.update_attributes(entry_params)
      @entries= @project.entries
      redirect_to action: "new"
    end

    def edit
     @project = Project.find(params[:project_id])
     @entry = @project.entries.find(params[:id])
    end

  	private
  	def entry_params
  		params.require(:entry).permit(:hours, :minutes, :date, :comments)
  	end
end
