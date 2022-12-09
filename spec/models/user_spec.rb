require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'Elson')
  end

  it 'is valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'is not valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'Name must not be blank' do
    @user.name = ' '
    expect(@user).to_not be_valid
  end

  it 'has "Elson" as name' do
    expect(@user.name).to eq('Elson')
  end
end
