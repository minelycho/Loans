require 'rails_helper'

RSpec.describe 'layouts/application.html.erb', type: :view do

  context 'When user is Logged in' do

    let(:user){FactoryBot.create(:user)}
    before :each do
      sign_in(user)
      render
    end

    it 'he can Sign out' do
      expect(rendered).to include('Sign out')
    end

    it 'shows user\'s email' do
      expect(rendered).to match(user.email)
    end
  end


  context 'When user is not Logged in' do
    before :each do
      render
    end

    it 'he can Sign in' do
      expect(rendered).to include('Sign in')
    end

    it 'he can Register' do
      expect(rendered).to include('Register')
    end
  end

end
