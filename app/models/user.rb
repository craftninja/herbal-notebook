class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :username, :email
  validates_presence_of :password, :password_confirmation, on: :create

end
