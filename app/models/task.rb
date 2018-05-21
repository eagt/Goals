class Task < ApplicationRecord
 
include ActiveModel::Dirty

belongs_to :list, optional: true

validates :name, presence: true  
validate :deadeline_cannot_be_in_the_past 

validate :set_done_at



# Sort tasks by sooner first (deadline_at)  
default_scope {order(:deadline_at)} 

# Deadline cannot be in the past unless status == Completed
	def deadeline_cannot_be_in_the_past
		if deadline_at.present? && deadline_at < DateTime.current
		errors.add(:deadline_at, 'Deadline MUST be later than current date/time') unless status == 'Completed'
		puts status
		end
	end

# Setting done_at depending of task.status
	def set_done_at
		if self.status == "Completed"			
		   self.done_at = DateTime.now	
		else				
		   self.done_at = blank?
		end
	end
end



