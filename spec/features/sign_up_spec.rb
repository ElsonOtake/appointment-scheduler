require 'rails_helper'

RSpec.describe 'Sign up page', type: :feature do
  describe 'without client logged in' do
    it 'will present sign un page' do
      visit '/clients/new'
      expect(current_path).to eq(new_client_path)
    end

    it 'will have page with input field Name' do
      visit '/clients/new'
      expect(page).to have_field('Name')
    end

    it 'will have page with button "Sign Up"' do
      visit '/clients/new'
      expect(page).to have_button('Sign Up')
    end
  end
end
