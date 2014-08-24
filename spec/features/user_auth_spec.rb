require 'rails_helper'

feature 'User Auth' do

  scenario 'User can register' do
    visit '/'
    click_on 'Register'
    fill_in 'Username', with: 'User'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Register'
    expect(page).to have_content('Welcome, User!')
    expect(page).to have_content('Your registration was successful!')
  end
end