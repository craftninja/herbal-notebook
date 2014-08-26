class Herb < ActiveRecord::Base
  belongs_to :part
  has_many :properties, :through => :herbal_properties
  has_many :herbal_properties
  has_many :preparations, :through => :herbal_preparations
  has_many :herbal_preparations

  def specifics
    HerbalProperty.where(:herb_id => self.id, :specific => true)
  end

end
