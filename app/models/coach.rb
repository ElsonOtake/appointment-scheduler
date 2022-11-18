class Coach < ApplicationRecord
  has_many :schedules
  validates :name, presence: true
  validates :timezone, presence: true
end
