require 'rails_helper'

RSpec.describe 'Schedules page', type: :feature do
  describe 'with client logged in and coach selected' do
    before(:each) do
      @client = Client.create(name: 'Elson')
      @coach = Coach.create(name: 'Dr. Geovany Keebler', timezone: '(GMT-06:00) Central Time (US & Canada)')
    end

    it 'will present schedules page' do
      visit "/clients/#{@client.id}/coaches/#{@coach.id}/schedules"
      expect(current_path).to eq(client_coach_schedules_path(@client.id, @coach.id))
    end

    it 'will have page content' do
      visit "/clients/#{@client.id}/coaches/#{@coach.id}/schedules"
      expect(page).to have_content('Schedule')
      expect(page).to have_content('Sunday')
      expect(page).to have_content('Monday')
      expect(page).to have_content('Tuesday')
      expect(page).to have_content('Wednesday')
      expect(page).to have_content('Thursday')
      expect(page).to have_content('Friday')
      expect(page).to have_content('Saturday')
    end
  end
end
