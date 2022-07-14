require 'faker'
require 'down'

puts 'Seeding data ...'

# Creates and admin account
email = 'admin@example.com'
password = 'admin123'
puts "Creating a sample admin account with email '#{email}' and password '#{password}' ..."
Admin.create({email: email, password: password, password_confirmation: password})
puts "Done creating a sample admin account!"

# Generate some sample property data
puts "Creating 50 sample properties data ..."
50.times do |i|
  image = Down.download(Faker::LoremFlickr.image(size: '640x480', search_terms: ['house', 'interior', 'estate', 'property']))
  property = Property.create!(
    name: Faker::Company.unique.name,
    description: Faker::Lorem.sentence(word_count: 8, random_words_to_add: 10),
    size: rand(400..1800),
    price: rand(200000..1750000)
  )
  property.images.attach(io: image, filename: "property_image_#{property.id}.jpg")
  puts "Sample property ##{i + 1} created"
end
puts 'Done creating 50 sample properties'

puts 'Seeding completed :)'
