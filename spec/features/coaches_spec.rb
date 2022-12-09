require 'rails_helper'

RSpec.describe 'Coaches page', type: :feature do
  describe 'with client logged in' do
    before(:each) do
      @client = Client.create(name: 'Elson')
    end

    it 'will present coaches page' do
      visit "/clients/#{@client.id}/coaches"
      expect(current_path).to eq(client_coaches_path(@client.id))
    end

    it 'will have page content' do
      visit "/clients/#{@client.id}/coaches"
      expect(page).to have_content('Coaches')
      expect(page).to have_content('Name')
      expect(page).to have_content('Time Zone')
    end
  end
end
