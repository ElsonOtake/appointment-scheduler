require 'rails_helper'

RSpec.describe 'Schedules page', type: :feature do
  describe 'with user logged in and coach selected' do
    before(:each) do
      @user = User.create(name: 'Elson')
      @coach = Coach.create(name: 'Dr. Geovany Keebler', timezone: '(GMT-06:00) Central Time (US & Canada)')
    end

    it 'will present schedules page' do
      visit "/users/#{@user.id}/coaches/#{@coach.id}/schedules"
      expect(current_path).to eq(user_coach_schedules_path(@user.id, @coach.id))
    end

    it 'will have page content' do
      visit "/users/#{@user.id}/coaches/#{@coach.id}/schedules"
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
