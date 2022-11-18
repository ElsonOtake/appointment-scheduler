class Schedule < ApplicationRecord
  belongs_to :coach
  validates :day_of_week, presence: true
  validates :booking_time, presence: true
end
