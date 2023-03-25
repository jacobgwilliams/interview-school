class Classroom < ApplicationRecord
  belongs_to :building, optional: false

  validates :room_number, presence: true
end
