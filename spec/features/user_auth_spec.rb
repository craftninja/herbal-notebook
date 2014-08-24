require 'rails_helper'

feature 'User Auth' do

  let :user do
    User.new(
        :username => 'User',
        :email => 'user@example.com',
        :password => 'password',
        :password_confirmation => 'password')
  end

  scenario 'User can register' do
    register(user)
    expect(page).to have_content('Welcome, User!')
    expect(page).to have_content('Your registration was successful!')
  end

  scenario 'User can logout' do
    register(user)
    click_on 'Logout'
    expect(page).to have_content 'You have successfully logged out'
  end

end
