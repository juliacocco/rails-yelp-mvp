# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying database..."
Restaurant.destroy_all


puts "Creating a restaurant..."
restaurants_attributes = [
  {
    name:         'Ceviche',
    address:      '17 Frith St, Soho, London W1D 4RG',
    phone_number: '02072921234',
    category:     'french'
  },
  {
    name:         'Sushi Tetsu',
    address:      '12 Jerusalem Passage, Clerkenwell, London EC1V 4JP',
    phone_number: '02072922040',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'



puts "Destroying database..."
Review.destroy_all


puts "Creating a review..."
review_attributes = [
  {
    restaurant_id:  2,
    content:       'Unique food',
    rating:         5
  },
]


Review.create!(review_attributes)
puts 'Finished!'

