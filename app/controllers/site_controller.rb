class SiteController < ApplicationController

	 def home
  	render 'home' #not necessary, because naming is the same
  	end

  	def contact

  	end

  	def list
  		@lastprojects = Project.last_created_projects(4)
  		@projects = Project.all.limit(10) #code before render!
  	end

  	def show
  		#@project = Project.find(params[:id])
 
  		if Project.all.empty?
  			render "emptypage"
  		else 
  			@project = Project.find params[:project_id]
  		end

	 #    begin
		# @project = Project.find params[:id]
		# rescue ActiveRecord::RecordNotFound
		# render 'no_projects_found'
		# end
  	end

end
