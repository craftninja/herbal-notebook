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

def create_blackberry
  decoction = Preparation.create(
    :name => 'decoction',
    :recipe => 'This is a lovely way to somewhat quickly prepare a tea composed of \'hard parts\' such as bark, berries, roots or twigs.\n\nTo prepare a decoction, use a teaspoon to a tablespoon of dried herb per 2 cups of water. Bring water to a boil, then turn the heat down as low as possible. The water should barely be bubbling at a small simmer. You may be able to move your pot partially off the burner if lowest heat is too hot. Add your herbs, and allow to decoct for 20-30 minutes. The water may be at about half it\'s original volume, but no less.'
  )
  overnight_infusion = Preparation.create(
    :name => 'overnight_infusion',
    :recipe => 'Overnight infusions are a great way to drink herbs. Because of the long steeping process, highly nutritious herbs can give more of their vitamins and minerals. Both \'hard parts\' (bark, berries, roots or twigs) and soft parts (leaves and flowers) enjoy this preparation.\n\nTo prepare an overnight infusion, use a teaspoon to a tablespoon of dried herb per cup of water. The water should have just stopped boiling, and then pour directly on the herbs, preferably loose and able to mingle in the infusion container (a jar or pyrex measuring pitcher will do the job well). Let steep covered overnight or about 8 hours.\n\nAn overnight infusion is prepared in the same way as an infusion with the exception of a much longer steep time. It is said that this preparation can be ready as soon as 4 hours after start of the steep, but the general guideline of 8 hours is preferred.'
  )
  tincture = Preparation.create(
    :name => 'tincture',
    :recipe => 'Tinctures are surprisingly easy to prepare, but do take a bit of time. The preparation lends itself to making fairly direct medicine out of herbs. In addition to your chosen herb, you will need a tight sealing jar, and your choice of alcohol. Alcohol can be any high proof drinking alcohol such as vodka, whiskey, or whatever you prefer.\n\nTo prepare a tincture, decide how much volume of tincture you would like in your jar. Mark the jar at this point. If you are making a tincture out of soft parts (leaves or flowers), imagine dividing this volume into 3, and mark the lower third. If you are making a tincture out of hard parts (bark, berries, roots or twigs), imagine dividing this volume into 4, and mark the lower quarter. If you are using fresh herb, gently put fresh herb all the way up to your tincture volume mark, and just cover with your alcohol. If you are using dried herb, fill the jar to the lower mark with herb, and then up to the tincture volume mark with alcohol. Tightly cover your tincture, and gently turn a few times to mix the herb. Place in a cool place out of direct sunlight where the tincture can get your attention, and gently turn a few times a day, then a week. Allow the tincture to steep for about a month, then strain as needed or strain into a new vessel. Be sure and label each tincture vessel! This preparation will generally last more than 5 years.\n\nSome tinctures that are great to always keep on hand are Thyme (for fighting colds and flus), Meadowsweet (great for all kinds of gastrointestinal distress), Turmeric (an amazing anti-inflammatory, but caution, she stains quickly), and Motherwort (an amazing woman\'s herb).'
  )
  honegar = Preparation.create(
    :name => 'honegar',
    :recipe => 'Honegars are technically a tincture with a different menstrum, or tincturing liquid, that also has honey added after the tincturing process. Instead of using alcohol, the honegar tincture uses vinegar. In addition to your chosen herb, you will need apple cider vinegar, raw honey (or try using an infused honey, another herbal preparation), a tight sealing jar and possibly some plastic wrap to place between the glass and the lid if you notice any corrosion in the lid during the steep.\n\nTo prepare a honegar, decide how much volume you would like in your jar. Mark the jar at this point. If you are making a honegar out of soft parts (leaves or flowers), imagine dividing this volume into 3, and mark the lower third. If you are making a honegar out of hard parts (bark, berries, roots or twigs), imagine dividing this volume into 4, and mark the lower quarter. If you are using fresh herb, gently put fresh herb all the way up to your volume mark, and just cover with apple cider vinegar. If you are using dried herb, fill the jar to the lower mark with herb, and then up to the volume mark with apple cider vinegar. Tightly cover your preparation, and gently turn a few times to mix the herb. Place in a cool place out of direct sunlight where the preparation can get your attention, and gently turn a few times a day, then a week. Allow to steep for about a month, then strain into a larger new vessel. Add honey to taste, 1/4 to 1/3 of the resultant vinegar volume is good amount. Gently turn to mix. Be sure and label each tincture vessel! This preparation will generally last 1-2 years.\n\nSome tinctures that are great to always keep on hand are Thyme (for fighting colds and flus), Meadowsweet (great for all kinds of gastrointestinal distress), Turmeric (an amazing anti-inflammatory, but caution, she stains quickly), and Motherwort (an amazing woman\'s herb).'
  )
  syrup = Preparation.create(
    :name => 'syrup',
    :recipe => 'A syrup is essentially a decoction with honey or honey and whiskey added to extend the shelf life. Syrups should definitely be stored in the refrigerator and can generally last one season (a few weeks to months).\n\nTo prepare a syrup, use 1-2 tablespoon of dried herb per 2 cups of water. Bring water to a boil, then turn the heat down as low as possible. The water should barely be bubbling at a small simmer. You may be able to move your pot partially off the burner if lowest heat is too hot. Add your herbs, and allow to decoct for 20-30 minutes. The water may be at about half it\'s original volume. Strain and allow decoction to cool to a point where you can hold the pot (not by the handle, but by the walls of the pot) comfortably with bare hands. Add half the resultant decoction volume in honey or honey and whiskey and refrigerate.'
  )

  astringent = Property.create(:name => 'astringent', :definition => 'tightens tissue, tends to dry')
  diuretic = Property.create(:name => 'diuretic', :definition => 'helps eliminate water')
  nutritive = Property.create(:name => 'nutritive', :definition => '')
  tonic = Property.create(:name => 'tonic', :definition => 'generally supportive of body systems, usually good for daily use')

  fruit = Part.create(:structure => 'fruit')
  leaf = Part.create(:structure => 'leaf')
  root = Part.create(:structure => 'root')

  blackberry = Plant.create(:common_name => 'blackberry', :species => ['Rubus fructicosus'], :contraindications => [])
  blackberry_leaf = Herb.create(:plant_id => blackberry.id, :part_id => leaf.id, :time_to_collect => 'spring')
  HerbalProperty.create(:herb_id => blackberry_leaf.id, :property_id => nutritive.id, :specific => false)
  HerbalProperty.create(:herb_id => blackberry_leaf.id, :property_id => tonic.id, :specific => false)
  HerbalProperty.create(:herb_id => blackberry_leaf.id, :property_id => astringent.id, :specific => false)
  HerbalProperty.create(:herb_id => blackberry_leaf.id, :property_id => diuretic.id, :specific => false)
  HerbalPreparation.create(:herb_id => blackberry_leaf.id, :preparation_id => overnight_infusion.id, :favorite => false)
  blackberry_root = Herb.create(:plant_id => blackberry.id, :part_id => root.id, :time_to_collect => 'fall')
  HerbalProperty.create(:herb_id => blackberry_root.id, :property_id => astringent.id, :specific => false)
  HerbalPreparation.create(:herb_id => blackberry_root.id, :preparation_id => overnight_infusion.id, :favorite => false)
  HerbalPreparation.create(:herb_id => blackberry_root.id, :preparation_id => decoction.id, :favorite => false)
  HerbalPreparation.create(:herb_id => blackberry_root.id, :preparation_id => tincture.id, :favorite => false)
  blackberry_fruit = Herb.create(:plant_id => blackberry.id, :part_id => fruit.id, :time_to_collect => 'fall')
  HerbalProperty.create(:herb_id => blackberry_fruit.id, :property_id => nutritive.id, :specific => false)
  HerbalProperty.create(:herb_id => blackberry_fruit.id, :property_id => tonic.id, :specific => false)
  HerbalPreparation.create(:herb_id => blackberry_fruit.id, :preparation_id => honegar.id, :favorite => false)
  HerbalPreparation.create(:herb_id => blackberry_fruit.id, :preparation_id => syrup.id, :favorite => false)
  HerbalPreparation.create(:herb_id => blackberry_fruit.id, :preparation_id => tincture.id, :favorite => false)
end
