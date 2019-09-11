class Task < ApplicationRecord
	belongs_to :user
	enum status:  %i(backlog inprogress under_review completed)
	
	validates_presence_of :title, :description
end
