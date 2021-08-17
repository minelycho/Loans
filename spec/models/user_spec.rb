require 'rails_helper'

RSpec.describe User, type: :model do


  it 'email should be unique' do
    user = FactoryBot.create(:user, email: 'algo@algo.com')
    contact = FactoryBot.build(:user, email: 'algo@algo.com')
    expect(contact).not_to be_valid
  end

  context 'password complexity' do

    it 'when valid data' do
      expect(build(:user, password: 'Passw0rd@')).to be_valid
    end

    it 'when invalid data' do
      expect(build(:user, password: 'sg555')).not_to be_valid
    end


  end

end
