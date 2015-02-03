# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
 a = Project.create name: 'Chicago', description:  'Me'
 b = Project.create name: 'NY', description:  'Capital'
 project = Project.create name: 'Stains', description:  'Massive'

(1..10).each do |i|
	project.entries.create(comments: "EntryNumber#{i}")
end
#   Mayor.create(name: 'Emanuel', city: cities.first)