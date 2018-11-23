class Project < ApplicationRecord
	belongs_to :team
	belongs_to :user

	# user can be in multiple teams and still create a project in any team, as opposed to the fact that he needs to be in a certain team to create a project in that team!
	accepts_nested_attributes_for :team
end
