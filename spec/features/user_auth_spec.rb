require 'rails_helper'

feature 'User Auth' do

  let :user do
    User.new(
        :username => 'Amber Corcoran',
        :email => 'user@example.com',
        :password => 'password',
        :password_confirmation => 'password')
  end

  scenario 'User can register' do
    register(user)
    expect(page).to have_content("Welcome, #{user.username}!")
    expect(page).to have_content('Your registration was successful!')
  end

  scenario 'User can logout' do
    register(user)
    click_on 'Logout'
    expect(page).to have_content 'You have successfully logged out'
  end

  scenario 'User can login' do
    register(user)
    click_on 'Logout'
    login(user)
    expect(page).to have_content("Welcome, #{user.username}!")
    expect(page).to have_content('Your login was successful!')
  end

  scenario 'User sees errors on registration' do
    user.username = ''
    register(user)
    expect(page).to have_content('Username can\'t be blank')
  end

  scenario 'User sees errors on login' do
    register(user)
    click_on 'Logout'
    user.email = 'notuser@example.com'
    login(user)
    expect(page).to have_content('Email and/or Password is incorrect.')
  end

end
