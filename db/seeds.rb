# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # Before seeding, clear the database records to avoid duplication
# Collection.delete_all

# # All Products
# Collection.create!(
#   name: 'All Products', 
#   release_time: '2010-01-01',
#   picture: 'collections/all-products.png'
# )

# # Art Baby Collection
# Collection.create!(
#   name: 'Art Baby Collection', 
#   release_time: '2015-09-01',
#   picture: 'collections/art-baby-collection.png'
# )
# # Classic Collection
# Collection.create!(
#   name: 'Classic Collection', 
#   release_time: '2010-01-01',
#   picture: 'collections/classic-collection.png'
# )
# # Color Me In Collection
# Collection.create!(
#   name: 'Color Me In Collection', 
#   release_time: '2016-01-01',
#   picture: 'collections/color-me-in-collection.png'
# )
# # Heatwave Collection
# Collection.create!(
#   name: 'Heatwave Collection', 
#   release_time: '2017-03-01',
#   picture: 'collections/heatwave-collection.png'
# )
# # Influencer Collecion
# Collection.create!(
#   name: 'Influencer Collection', 
#   release_time: '2018-01-01',
#   picture: 'collections/influencer-collection.png'
# )
# # Monochrome Graffiti Collection
# Collection.create!(
#   name: 'Monochrome Graffiti Collection', 
#   release_time: '2018-07-01',
#   picture: 'collections/monochrome-graffiti-collection.png'
# )
# # Pop Art Collection
# Collection.create!(
#   name: 'Pop Art Collection', 
#   release_time: '2017-09-01',
#   picture: 'collections/pop-art-collection.png'
# )
# # Teen Spirit Collection
# Collection.create!(
#   name: 'Teen Spirit Collection', 
#   release_time: '2015-03-01',
#   picture: 'collections/teen-spirit-collection.png'
# )
# # Weekend Getaway Collection
# Collection.create!(
#   name: 'Weekend Getaway Collection', 
#   release_time: '2016-03-01',
#   picture: 'weekend-getaway-collection.png'
# )
# # Woman Girl Collection
# Collection.create!(
#   name: 'Woman Girl Collection', 
#   release_time: '2017-09-01',
#   picture: 'collections/woman-girl-collection.png'
# )

Product.delete_all


Product.create!(
  name: "Brown Rice Spaceman Backpack",
  price: "130.00",
  description_short: "",
  description_long: ""
)