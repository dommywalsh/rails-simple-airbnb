puts "Cleaning DB..."
Flat.destroy_all

puts "Creating flats..."
50.times do
  Flat.create(name: Faker::Mountain.name, address: Faker::Address.street_name, description: Faker::ChuckNorris.fact, price_per_night: rand(100..10000), number_of_guests: rand(0...10)  )
end

puts "Finished! #{Flat.count} flats created"
