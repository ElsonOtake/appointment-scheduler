require 'rails_helper'

RSpec.describe 'Sign up page', type: :feature do
  describe 'without user logged in' do
    it 'will present sign un page' do
      visit '/users/new'
      expect(current_path).to eq(new_user_path)
    end

    it 'will have page with input field Name' do
      visit '/users/new'
      expect(page).to have_field('Name')
    end

    it 'will have page with button "Sign Up"' do
      visit '/users/new'
      expect(page).to have_button('Sign Up')
    end
  end
end
