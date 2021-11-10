# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
flat1 = { name: "Light & Spacious Garden Flat London", address: "10 Clifton Gardens London W9 1DT", description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75,
  number_of_guests: 3 }
flat2 = { name: "Spacious Flat Brussels", address: "22 avenue du tout, 1000 Bruxelles", description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 87,
  number_of_guests: 1 }
flat3 = { name: "Appartement Paris", address: "22 avenue du tout, 75000 Paris", description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 90,
  number_of_guests: 2 }
flat4 = { name: "Pok'appart", address: "22 avenue du tout, 75000 Paris", description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 28,
  number_of_guests: 4 }
flat5 = { name: "Belgian appartment", address: "22 avenue du tout, 75000 Paris", description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75,
  number_of_guests: 3 }
flat6 = { name: "Les Deux Apparts", address: "22 avenue du tout, 75000 Paris", description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 150,
  number_of_guests: 2  }

[flat1, flat2, flat3, flat4, flat5, flat6].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end

puts "Finished!"
