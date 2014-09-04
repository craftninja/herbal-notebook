class Preparation <ActiveRecord::Base

  has_many :herbs, through: :herbal_preparations
  has_many :herbal_preparations
end
