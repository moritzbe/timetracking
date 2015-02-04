class Entry < ActiveRecord::Base
	belongs_to :project
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30}
	validates :name, format: {with: /\A[0-9]/ }
end
