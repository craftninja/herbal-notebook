class Plant < ActiveRecord::Base
  serialize :species, Array
  serialize :contraindications, Array

  has_many :herbs

end
