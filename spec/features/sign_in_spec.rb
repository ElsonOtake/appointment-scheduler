require 'rails_helper'

RSpec.describe 'Sign in page', type: :feature do
  describe 'without user logged in' do
    it 'will present sign in page' do
      visit '/sessions/new'
      expect(current_path).to eq(new_session_path)
    end

    it 'will have page with input field Name' do
      visit '/sessions/new'
      expect(page).to have_field('Name')
    end

    it 'will have page with button "Sign In!"' do
      visit '/sessions/new'
      expect(page).to have_button('Sign In!')
    end
  end
end
