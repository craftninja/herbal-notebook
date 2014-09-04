class Property < ActiveRecord::Base
  has_many :herbs, through: :herbal_properties
  has_many :herbal_properties
end
