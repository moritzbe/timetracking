class Project < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /\A[0-9]/ }

	def self.iron_find(id)
		where("id = '#{id}'")
	end

	def self.clean
		from = Time.now - 1.week
		where("created_at<?", from).destroy_all
	end

	def self.last_created_projects(n)
		where("created_at<?", Time.now).limit(n)
	end

	def self.calculate_time
		# to calculate the amount of hours worked in that project in a given month
		# >	p	=	Project.find_by	name:	’Telefonica’	
		# >	p.total_hours_in_month(3,	2014)
		# =>	33
		p = Project.find(params[:project_id])
		p.entries.where("created_at")
	end


end
