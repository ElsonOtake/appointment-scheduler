class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :coach
  validates :day_of_week, presence: true
  validates :booking, presence: true
end
