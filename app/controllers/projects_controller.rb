class ProjectsController < ApplicationController
  	
    def show
  		@project = Project.find(params[:id])
  	end

    def new
      @project = Project.new
    end

    def index
      @projects = Project.all
    end

    def create
      @project = Project.new project_params
      if @project.save
        redirect_to projects_path
      else
        render "new"
      end
    end

    private
    def project_params
      params.require(:project).permit(:name, :description)
    end
  end