require 'rails_helper'

feature 'Herb Dictionary' do

  scenario 'Any user can view herbal dictionary' do
    create_vervain

    visit '/'
    expect(page).to have_content('Welcome to the Herbal Notebook, kind stranger!')
    click_on 'Care to browse our little herbal dictionary?'
    select 'vervain', from: 'plant_common_name'
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
      within('.properties') do
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

  scenario 'Herb without contraindications has default message' do
    create_blackberry

    visit '/'
    expect(page).to have_content('Welcome to the Herbal Notebook, kind stranger!')
    click_on 'Care to browse our little herbal dictionary?'
    select 'blackberry', from: 'plant_common_name'
    click_on 'Tell me about this herb'
    expect(page).to have_content('Blackberry')

    within('.contraindications') do
      expect(page).to have_content('No major known contraindications, but always ask your body!')
    end
  end

  scenario 'Herb\'s properties are linked to their definition which lists herbs with that property' do
    create_vervain

    visit '/'
    click_on 'Care to browse our little herbal dictionary?'
    select 'vervain', from: 'plant_common_name'
    click_on 'Tell me about this herb'
    click_on 'galactagogue'
    expect(page).to have_content('Galactagogue')
    expect(page).to have_content('Supports milk production.')
    expect(page).to have_content('Vervain leaf')
    click_on 'Vervain leaf'
    within('.species') do
      expect(page).to have_content('Verbena hastata')
    end
  end

end
