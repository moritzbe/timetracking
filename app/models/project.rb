class Project < ActiveRecord::Base
	has_many :entries
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
end
