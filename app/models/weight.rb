class Weight < ApplicationRecord
  # associations
  belongs_to :exercise
  # a weight has a plan through the exercise
  has_one :plan, through: :exercise

  # validations (weight, percentage, set, rep)
  validates :percentage, presence: true
  validates :weight, presence: true
end
