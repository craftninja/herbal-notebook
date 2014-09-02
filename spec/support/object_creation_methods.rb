def create_vervain
  anti_depressant = Property.create(:name => 'anti-depressant', :definition => 'tends to support happiness')
  anti_inflammatory = Property.create(:name => 'anti-inflammatory', :definition => 'helps reduce inflammation')
  anti_spasmodic = Property.create(:name => 'anti-spasmodic', :definition => '')
  diaphoretic = Property.create(:name => 'diaphoretic', :definition => '')
  digestive_tonic = Property.create(:name => 'digestive tonic', :definition => 'supports digestion')
  emmenagogue = Property.create(:name => 'emmenagogue', :definition => 'helps bring on menses')
  galactagogue = Property.create(:name => 'galactagogue', :definition => 'supports milk production')
  hepatic = Property.create(:name => 'hepatic', :definition => 'supports the liver')
  nervine = Property.create(:name => 'nervine', :definition => 'supports the nervous system, soothes the nerves')
  relaxant = Property.create(:name => 'relaxant', :definition => '')
  sedative = Property.create(:name => 'sedative', :definition => '')
  vulnerary = Property.create(:name => 'vulnerary', :definition => 'healing to wounds')

  infusion = Preparation.create(
    :name => 'infusion',
    :recipe => 'Also known as a nice cup of tea, tisane, or ceremonial cup. This preparation is great for immediacy of readiness, and is also great for those herbs that get very bitter. Chamomile, for example, is a lovely infusion. The shorter steeping time of the infusion can help those who prefer to avoid access to her more bitter properties.\n\nTo prepare an infusion, use a teaspoon to a tablespoon of dried herb per cup of water. The water should have just stopped boiling, and then pour directly on the herbs, preferably loose and able to mingle in the infusion container (a jar or pyrex measuring pitcher will do the job well). Let steep covered as long as you can wait, perhaps 15 minutes, then strain cup by cup.\n\nThis preparation is best used for \'soft parts\' such as leaves and flowers, although there are \'hard parts\' that sometimes readily give their constituents nicely to an infusion such as elderberries. Hawthorn berries are notorious for not enjoying an infusion.'
  )
  tincture = Preparation.create(
    :name => 'tincture',
    :recipe => 'Tinctures are surprisingly easy to prepare, but do take a bit of time. The preparation lends itself to making fairly direct medicine out of herbs. In addition to your chosen herb, you will need a tight sealing jar, and your choice of alcohol. Alcohol can be any high proof drinking alcohol such as vodka, whiskey, or whatever you prefer.\n\nTo prepare a tincture, decide how much volume of tincture you would like in your jar. Mark the jar at this point. If you are making a tincture out of soft parts (leaves or flowers), imagine dividing this volume into 3, and mark the lower third. If you are making a tincture out of hard parts (bark, berries, roots or twigs), imagine dividing this volume into 4, and mark the lower quarter. If you are using fresh herb, gently put fresh herb all the way up to your tincture volume mark, and just cover with your alcohol. If you are using dried herb, fill the jar to the lower mark with herb, and then up to the tincture volume mark with alcohol. Tightly cover your tincture, and gently turn a few times to mix the herb. Place in a cool place out of direct sunlight where the tincture can get your attention, and gently turn a few times a day, then a week. Allow the tincture to steep for about a month, then strain as needed or strain into a new vessel. Be sure and label each tincture vessel! This preparation will generally last more than 5 years.\n\nSome tinctures that are great to always keep on hand are Thyme (for fighting colds and flus), Meadowsweet (great for all kinds of gastrointestinal distress), Turmeric (an amazing anti-inflammatory, but caution, she stains quickly), and Motherwort (an amazing woman\'s herb).'
  )
  leaf = Part.create(:structure => 'leaf')

  vervain = Plant.create(:common_name => 'vervain', :species => ['Verbena hastata'], :contraindications => ['CONTRAINDICATED pregnancy except encouraging contractions'])
  vervain_leaf = Herb.create(:plant_id => vervain.id, :part_id => leaf.id, :time_to_collect => 'summer')
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => nervine.id, :specific => true)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => relaxant.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => anti_depressant.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => galactagogue.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => diaphoretic.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => sedative.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => anti_spasmodic.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => hepatic.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => digestive_tonic.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => emmenagogue.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => vulnerary.id, :specific => false)
  HerbalProperty.create(:herb_id => vervain_leaf.id, :property_id => anti_inflammatory.id, :specific => false)
  HerbalPreparation.create(:herb_id => vervain_leaf.id, :preparation_id => infusion.id, :favorite => true)
  HerbalPreparation.create(:herb_id => vervain_leaf.id, :preparation_id => tincture.id, :favorite => false)
end
