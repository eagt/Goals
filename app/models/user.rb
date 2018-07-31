class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :lists, :dependent=> :destroy
  has_many :tasks, :dependent=> :destroy
  has_many :improvements, :dependent=> :destroy
  acts_as_voter
end
