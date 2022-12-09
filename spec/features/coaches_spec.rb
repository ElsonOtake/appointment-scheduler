require 'rails_helper'

RSpec.describe 'Coaches page', type: :feature do
  describe 'with user logged in' do
    before(:each) do
      @user = User.create(name: 'Elson')
    end

    it 'will present coaches page' do
      visit "/users/#{@user.id}/coaches"
      expect(current_path).to eq(user_coaches_path(@user.id))
    end

    it 'will have page content' do
      visit "/users/#{@user.id}/coaches"
      expect(page).to have_content('Coaches')
      expect(page).to have_content('Name')
      expect(page).to have_content('Time Zone')
    end
  end
end
