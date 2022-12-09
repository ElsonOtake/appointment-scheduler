require 'rails_helper'

RSpec.describe Schedule, type: :model do
  before(:each) do
    @coach = Coach.new(name: 'Dr. Geovany Keebler', timezone: '(GMT-06:00) Central Time (US & Canada)')
    @schedule = @coach.schedules.new(day_of_week: 'Wednesday', booking_time: '2000-01-01 14:00:00.000000')
  end

  it 'is valid with valid attributes' do
    expect(@schedule).to be_valid
  end

  it 'has @coach.id as coach_id' do
    expect(@schedule.coach_id).to eq(@coach.id)
  end

  it 'is not valid without a day_of_week' do
    @schedule.day_of_week = nil
    expect(@schedule).to_not be_valid
  end

  it 'is not valid without a booking_time' do
    @schedule.booking_time = nil
    expect(@schedule).to_not be_valid
  end

  it 'day_of_week must not be blank' do
    @schedule.day_of_week = ' '
    expect(@schedule).to_not be_valid
  end

  it 'booking_time must not be blank' do
    @schedule.booking_time = ' '
    expect(@schedule).to_not be_valid
  end

  it 'has the "Wednesday" as day_of_week' do
    expect(@schedule.day_of_week).to eq('Wednesday')
  end

  it 'has the "2000-01-01 14:00:00.000000" as booking_time' do
    expect(@schedule.booking_time).to eq('2000-01-01 14:00:00.000000')
  end
end
