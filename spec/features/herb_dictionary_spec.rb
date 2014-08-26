require 'rails_helper'

feature 'Herb Dictionary' do

  scenario 'Any user can view herbal dictionary' do
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

    visit '/'
    expect(page).to have_content('Welcome to the Herbal Notebook, kind stranger!')
    click_on 'Care to browse our little herbal dictionary?'
    select 'Vervain', from: 'plant_common_name'
    click_on 'Tell me about this herb'
    expect(page).to have_content('Vervain')
    within('.species') do
      expect(page).to have_content('Verbena hastata')
    end

    within('.contraindications') do
      expect(page).to have_content('CONTRAINDICATED pregnancy except encouraging contractions')
    end

    within('.parts') do
      expect(page).to have_content('leaf')
      within('.specific') do
        expect(page).to have_content('nervine')
      end
      within('.actions') do
        expect(page).to have_content('galactagogue')
        expect(page).to have_content('anti-spasmodic')
        expect(page).to have_content('hepatic')
      end
      within('.preparations') do
        expect(page).to have_content('tincture')
      end
      within('.best_time_to_collect') do
        expect(page).to have_content('summer')
      end
    end
  end

end
