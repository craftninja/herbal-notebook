require 'rails_helper'

describe User do

  it 'verifies entry of all fields' do
    user = User.new
    expect(user.valid?).to be(false)
    user.username = 'User'
    expect(user.valid?).to be(false)
    user.email = 'user@example.com'
    expect(user.valid?).to be(false)
    user.password = 'password'
    expect(user.valid?).to be(false)
    user.password_confirmation = 'password'
    expect(user.valid?).to be(true)
  end

  it 'verifies that password and confirmation must match' do
    user = User.new
    user.username = 'User'
    user.email = 'user@example.com'
    user.password = 'password'
    user.password_confirmation = 'another_password'
    expect(user.valid?).to be(false)
    user.password_confirmation = 'password'
    expect(user.valid?).to be(true)
  end

end