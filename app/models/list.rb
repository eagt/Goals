class List < ApplicationRecord

  validates :name, presence: true

  belongs_to :user, optional: true 
  has_many :tasks, dependent: :delete_all
  accepts_nested_attributes_for :tasks, allow_destroy: true
  default_scope {order(:deadline_at)}  
end