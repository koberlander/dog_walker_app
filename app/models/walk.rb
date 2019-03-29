class Walk < ApplicationRecord
  belongs_to :walker
  belongs_to :dog

  validates :walk_length, presence: true, inclusion: {in: 10..30, step: 10}
end
