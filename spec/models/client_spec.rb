require 'rails_helper'

RSpec.describe Client, type: :model do
  before(:each) do
    @client = Client.new(name: 'Elson')
  end

  it 'is valid with valid attributes' do
    expect(@client).to be_valid
  end

  it 'is not valid without a name' do
    @client.name = nil
    expect(@client).to_not be_valid
  end

  it 'Name must not be blank' do
    @client.name = ' '
    expect(@client).to_not be_valid
  end

  it 'has "Elson" as name' do
    expect(@client.name).to eq('Elson')
  end
end
