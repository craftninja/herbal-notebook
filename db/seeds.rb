# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Preparations
infusion = Preparation.create(
  :name => 'infusion',
  :recipe => 'Also known as a nice cup of tea, tisane, or ceremonial cup. This preparation is great for immediacy of readiness, and is also great for those herbs that get very bitter. Chamomile, for example, is a lovely infusion. The shorter steeping time of the infusion can help those who prefer to avoid access to her more bitter properties.\n\nTo prepare an infusion, use a teaspoon to a tablespoon of dried herb per cup of water. The water should have just stopped boiling, and then pour directly on the herbs, preferably loose and able to mingle in the infusion container (a jar or pyrex measuring pitcher will do the job well). Let steep covered as long as you can wait, perhaps 15 minutes, then strain cup by cup.\n\nThis preparation is best used for \'soft parts\' such as leaves and flowers, although there are \'hard parts\' that sometimes readily give their constituents nicely to an infusion such as elderberries. Hawthorn berries are notorious for not enjoying an infusion.'
)
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
glyceride = Preparation.create(
  :name => 'glyceride',
  :recipe => 'Glycerides are technically a tincture with a different menstrum, or tincturing liquid. They taste very sweet and often are less serious and medicinal than alcohol tinctures. Instead of using alcohol, the glyceride tincture uses glycerol. This glycerol will need to be diluted, but at a different rate for fresh versus dried herb. In addition to your chosen herb, you will need glycerol, a tight sealing jar and possibly some plastic wrap to place between the glass and the lid if you notice any corrosion in the lid during the steep.\n\nTo prepare a fresh herb glyceride, decide how much volume of tincture you would like in your jar. Mark the jar at this point. Gently put fresh herb all the way up to your mark. Fill the jar about 90% with glycerol, and then add water to the mark. Tightly cover your glyceride, and gently turn a few times to mix the herb. Place in a cool place out of direct sunlight where the glyceride can get your attention, and gently turn a few times a day, then a week. Allow the glyceride to steep for about a month, then strain as needed or strain into a new vessel. Be sure and label each glyceride vessel! This preparation will generally last 3-5 years.\n\nGlycerides are a great alternative to alcohol tinctures for those who cannot use alcohol, and some herbs seem to prefer glycerol as a menstrum. Some glycerides that are great to always keep on hand are Lemon Balm (for fighting cold sores and seasonal affective disorder) and Rose (great to add to alcohol tincture that are bitter, bringing love and lightness).'
)
honegar = Preparation.create(
  :name => 'honegar',
  :recipe => 'Honegars are technically a tincture with a different menstrum, or tincturing liquid, that also has honey added after the tincturing process. Instead of using alcohol, the honegar tincture uses vinegar. In addition to your chosen herb, you will need apple cider vinegar, raw honey (or try using an infused honey, another herbal preparation), a tight sealing jar and possibly some plastic wrap to place between the glass and the lid if you notice any corrosion in the lid during the steep.\n\nTo prepare a honegar, decide how much volume you would like in your jar. Mark the jar at this point. If you are making a honegar out of soft parts (leaves or flowers), imagine dividing this volume into 3, and mark the lower third. If you are making a honegar out of hard parts (bark, berries, roots or twigs), imagine dividing this volume into 4, and mark the lower quarter. If you are using fresh herb, gently put fresh herb all the way up to your volume mark, and just cover with apple cider vinegar. If you are using dried herb, fill the jar to the lower mark with herb, and then up to the volume mark with apple cider vinegar. Tightly cover your preparation, and gently turn a few times to mix the herb. Place in a cool place out of direct sunlight where the preparation can get your attention, and gently turn a few times a day, then a week. Allow to steep for about a month, then strain into a larger new vessel. Add honey to taste, 1/4 to 1/3 of the resultant vinegar volume is good amount. Gently turn to mix. Be sure and label each tincture vessel! This preparation will generally last 1-2 years.\n\nSome tinctures that are great to always keep on hand are Thyme (for fighting colds and flus), Meadowsweet (great for all kinds of gastrointestinal distress), Turmeric (an amazing anti-inflammatory, but caution, she stains quickly), and Motherwort (an amazing woman\'s herb).'
)
infused_oil = Preparation.create(
  :name => 'infused_oil',
  :recipe => 'Infused oils can be great in cooking or in body care. You can choose from many oils, although quality olive oil is recommended unless the fragrance would interfere with the intention. It is much more difficult to prepare a fresh herb infused oil than a dried herb infused oil... it is much recommended to dry any fresh herb to prepare it for an oil infusion. If this removes desired properties from the herb (such as in the case of Dandylion flowers or licorice flavored long leafy herb), a fresh herb sunny steep oil infusion recipe is reluctantly included. Fresh herb oil infusions spoil easily during a sunny steep, however a double boiler oil infusion might be a good compromise.\n\nTo prepare a dried herb oil infusion, decide how much volume you would like in your jar, and mark the jar at this point. If you are making an infused oil out of soft parts (leaves or flowers), imagine dividing this volume into 3, and mark the lower third. If you are making an infused oil out of hard parts (bark, berries, roots or twigs), imagine dividing this volume into 4, and mark the lower quarter. If you are using fresh herb, gently put fresh herb all the way up to your volume mark, and just cover with oil. At this point you can either choose a sunny steep which takes a month, or a double boiler steep which is generally ready in a day or so. For a dried herb sunny steep, cover the jar, gently turn to mix the herbs, and place in a very sunny window. For a fresh herb sunny steep (not recommended), cover jar with a clean cloth and secure with a rubber band. For a fresh or dried double boiler steep, place the jar in a saucepan and add water to the saucepan until the jar oil level is cleared from the outside. Remove the jar, bring the water to a boil and turn off. Once the water calms, gently place the jar into the oil. When the water is lukewarm, remove the jar, bring the water to a boil and turn off. Once again, return the jar to the hot water, and allow to steep again. Repeat this cycle 5-10 times with soft parts, or 10-15 times with hard parts. At the end of fresh, dried, sunny or double boiler steep, ensure the oil is tightly covered with a lid. If you think there might be residual water from a fresh herb infused oil, take the strained resultant oil, heat up a pot of water as described for the double boiler steep, and place uncovered jar into water. This can allow water to be more rapidly evaporated out of the oil. Any water in the oil will greatly increase the chance of spoilage... check any fresh infused oil preparations for fuzziness or cloudiness and discard if found.'
)
infused_honey = Preparation.create(
  :name => 'infused_honey',
  :recipe => 'Infused honey is a wonderful way of preserving herbs. There are several herbs who\'s properties or fragrance does not withstand drying, such as violets and dandylions. \n\nTo prepare an infused honey, decide how much volume of honey you would like in your jar. Mark the jar at this point. If you are making an infused honey out of soft parts (leaves or flowers), imagine dividing this volume into 3, and mark the lower third. If you are making an infused honey out of hard parts (bark, berries, roots or twigs), imagine dividing this volume into 4, and mark the lower quarter. If you are using fresh herb, gently put fresh herb all the way up to your volume mark, and just cover with your honey. If you are using dried herb, fill the jar to the lower mark with herb, and then up to the total volume mark with honey. Tightly cover your honey, and gently turn a few times to mix the herb. Place in a sunny window and turn periodically. Allow the honey to steep for about a month. At this point, straining is fairly optional. If your herb is not very edible at this point (still hard, like rosehips as opposed to rose petals), feel free to strain out the herb and pour hot water on it to make a honey tea with the dregs. Otherwise, the herb can be consumed with the honey. If it is difficult to strain the herb out, place the jar in a saucepan, add water to the saucepan to the level of the honey, remove the jar and heat the water to boiling, turn off, and add the jar when the water calms. Strain when the honey is melted and flowing more generously. Be sure and label each tincture vessel! This preparation will generally last more than 5 years.\n\nSome tinctures that are great to always keep on hand are Thyme (for fighting colds and flus), Meadowsweet (great for all kinds of gastrointestinal distress), Turmeric (an amazing anti-inflammatory, but caution, she stains quickly), and Motherwort (an amazing woman\'s herb).'
)
syrup = Preparation.create(
  :name => 'syrup',
  :recipe => 'A syrup is essentially a decoction with honey or honey and whiskey added to extend the shelf life. Syrups should definitely be stored in the refrigerator and can generally last one season (a few weeks to months).\n\nTo prepare a syrup, use 1-2 tablespoon of dried herb per 2 cups of water. Bring water to a boil, then turn the heat down as low as possible. The water should barely be bubbling at a small simmer. You may be able to move your pot partially off the burner if lowest heat is too hot. Add your herbs, and allow to decoct for 20-30 minutes. The water may be at about half it\'s original volume. Strain and allow decoction to cool to a point where you can hold the pot (not by the handle, but by the walls of the pot) comfortably with bare hands. Add half the resultant decoction volume in honey or honey and whiskey and refrigerate.'
)
compress = Preparation.create(
  :name => 'compress',
  :recipe => 'Compresses are external applications of strong teas. Essentially, you make a strong tea (infusion, decoction or overnight infusion as applicable to time constraints and herb type), strain it, soak a clean cloth in the strained tea, and apply it externally to a specific area.'
)
poultice = Preparation.create(
  :name => 'poultice',
  :recipe => 'A poultice is a fresh crushed herb applied externally, or dried herb just covered with boiling water and allowed to cool, then applied externally.\n\n\To prepare a poultice from dried herbs, place amount of herbs to cover affected area in a small bowl. There should be room above to herbs in the bowl. Bring water to a boil and just cover the herbs with the water, then cover the bowl with a lid or small plate. When the herbs are cool enough to apply, place herbs directly on affected area.\n\nTo prepare a poultice from fresh herbs: crush, pulverize, or masticate herbs. Place herbs directly on affected area.\n\nA favorite fresh poultice is Yarrow for cuts and wounds. Yarrow is anti-septic and styptic (which stops bleeding) and is a great wilderness first aid plant. Pick a few fresh-looking bigger leaves (not the oldest leaves, not the youngest leaves), chew on them until the bitter flavor has just plateaued, and apply to the wound.'
)
essential_oil = Preparation.create(
  :name => 'essential oil',
  :recipe => 'Essential oils are much more complex to make than these other preparations, but are readily available for purchase. They are rarely used neat, and not always safe to use diluted in a carrier oil either. Be sure and read about specific essential oils before using, and always test before using.\n\nGenerally, essential oils are great for making anointing oils at a dilution of 1 drop per 9 drops of carrier oil. Jojoba is a great carrier oil as it does not have a strong odor and is fairly shelf stable. Smelling salts are another great way to use essential oils. Place salt in a small salve jar. Add a few drops of essential oil directly to the salt. When you need a smell-cation, open the jar and inhale.'
)


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
prep = tincture

HerbalPreparation.create(
  :herb_id => herb.id,
  :preparation_id => prep.id,
  :favorite => true
)
