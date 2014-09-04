class Herb < ActiveRecord::Base
  belongs_to :part
  has_many :properties, :through => :herbal_properties
  has_many :herbal_properties
  has_many :preparations, :through => :herbal_preparations
  has_many :herbal_preparations

  def specifics
    HerbalProperty.where(:herb_id => self.id, :specific => true)
  end

  def name
    plant = Plant.find(self.plant_id)
    part = Part.find(self.part)
    "#{plant.common_name.capitalize} #{part.structure}"
  end

end
