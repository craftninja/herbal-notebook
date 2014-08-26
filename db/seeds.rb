# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plant = Plant.create(
  :common_name => 'Vervain',
  :species => ['Verbena hastata'],
  :contraindications => ['CONTRAINDICATED pregnancy except encouraging contractions'],
)
part = Part.create(
  :structure => 'leaf'
)
herb = Herb.create(
  :plant_id => plant.id,
  :part_id => part.id,
  :time_to_collect => 'summer'
)
property = Property.create(
  :name => 'nervine',
  :definition => 'soothes the nerves'
)
HerbalProperty.create(
  :herb_id => herb.id,
  :property_id => property.id,
  :specific => true
)
property2 = Property.create(
  :name => 'galactagogue',
  :definition => 'encourages milk production'
)
HerbalProperty.create(
  :herb_id => herb.id,
  :property_id => property2.id,
  :specific => false
)
property3 = Property.create(
  :name => 'anti-spasmodic',
  :definition => 'subsides muscle spasms'
)
HerbalProperty.create(
  :herb_id => herb.id,
  :property_id => property3.id,
  :specific => false
)
property4 = Property.create(
  :name => 'hepatic',
  :definition => 'supports the liver'
)
HerbalProperty.create(
  :herb_id => herb.id,
  :property_id => property4.id,
  :specific => false
)
prep = Preparation.create(
  :name => 'tincture',
  :recipe => 'For soft parts like leaves, or flowers...'
)
HerbalPreparation.create(
  :herb_id => herb.id,
  :preparation_id => prep.id,
  :favorite => true
)
