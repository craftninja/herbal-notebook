class User < ActiveRecord::Base

  validates_presence_of :username, :email
  has_secure_password
  validates_presence_of :password_confirmation, on: :create

end
