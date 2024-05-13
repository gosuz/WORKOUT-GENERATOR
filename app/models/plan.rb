class Plan < ApplicationRecord
  # associations
  belongs_to :user
  has_many :exercises
  has_many :weights, through: :exercises

  # validations
  validates :name, presence: true
  validates :exercise, presence: true
  # has to have a user_id
  # validates :user_id, presence: true
end
