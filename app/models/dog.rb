class Dog < ApplicationRecord
  has_many :walks
  has_many :walkers, through: :walks
  has_many :meds

  belongs_to :owner

  validates :name, :age, :gender, presence: true
end
