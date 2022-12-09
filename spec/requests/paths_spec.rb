require 'rails_helper'

RSpec.describe 'Path to', type: :request do
  describe 'root page' do
    it 'returns http success' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'sign in page' do
    it 'returns http success' do
      get '/sessions/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'sign un page' do
    it 'returns http success' do
      get '/users/new'
      expect(response).to have_http_status(:success)
    end
  end

  before(:each) do
    @user = User.create(name: 'Elson')
    @coach = Coach.create(name: 'Dr. Geovany Keebler', timezone: '(GMT-06:00) Central Time (US & Canada)')
  end
  describe 'coaches page' do
    it 'returns http success' do
      get "/users/#{@user.id}/coaches"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'schedules page' do
    it 'returns http success' do
      get "/users/#{@user.id}/coaches/#{@coach.id}/schedules"
      expect(response).to have_http_status(:success)
    end
  end
end
