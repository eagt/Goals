class Task < ApplicationRecord
 
validates :name, presence: true
  
validate :deadeline_cannot_be_in_the_past
belongs_to :list, optional: true

  def deadeline_cannot_be_in_the_past
    if deadline_at.present? && deadline_at < DateTime.current
      errors.add(:deadline_at, "Deadline MUST be later than current time")
    end
  end

end
