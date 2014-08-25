def register(user)
  visit '/'
  click_on 'Register'
  fill_in 'Username', with: user.username
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  fill_in 'Password confirmation', with: user.password_confirmation
  click_on 'Register'
end

def login(user)
  visit '/'
  click_on 'Login'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_on 'Login'
end
