require 'rails_helper'

RSpec.describe Coach, type: :model do
  before(:each) do
    @coach = Coach.new(name: 'Dr. Geovany Keebler', timezone: '(GMT-06:00) Central Time (US & Canada)')
  end

  it 'is valid with valid attributes' do
    expect(@coach).to be_valid
  end

  it 'is not valid without a name' do
    @coach.name = nil
    expect(@coach).to_not be_valid
  end

  it 'is not valid without a timezone' do
    @coach.timezone = nil
    expect(@coach).to_not be_valid
  end

  it 'Name must not be blank' do
    @coach.name = ' '
    expect(@coach).to_not be_valid
  end

  it 'Timezone must not be blank' do
    @coach.timezone = ' '
    expect(@coach).to_not be_valid
  end

  it 'has the "Dr. Geovany Keebler" as name' do
    expect(@coach.name).to eq('Dr. Geovany Keebler')
  end

  it 'has the "(GMT-06:00) Central Time (US & Canada)" as timezone' do
    expect(@coach.timezone).to eq('(GMT-06:00) Central Time (US & Canada)')
  end
end
