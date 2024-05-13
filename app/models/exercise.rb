class Exercise < ApplicationRecord
  # associations (belongs to etc)
  belongs_to :plan
  has_one :user, through: :plan
  has_many :weights

  # validations (validates: afad, presence:true)
  # name, max, plan_id
  validates :name, presence: true
  # validates :max, presence: true - might not really need to validate this for now.
end
