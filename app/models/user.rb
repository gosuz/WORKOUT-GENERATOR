class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # associations
  # a user has many plans
  has_many :plans
  # a user has many exercises through plans
  has_many :exercises, through: :plans

  # validations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true
end
