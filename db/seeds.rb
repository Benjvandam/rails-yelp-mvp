# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

restaurants = [{ name: "Outback", address: "Botafogo", phone_number: "+32488811450", category: "french" },
               { name: "McDonalds", address: "Leblon", phone_number: "+55975228532", category: "japanese" },
               { name: "Burger King", address: "Copacabana", phone_number: "+324999664577", category: "chinese" },
               { name: "Mays", address: "Antwerpen", phone_number: "+32438577359", category: "chinese" },
               { name: "Amadeus", address: "Antwerpen", phone_number: "+32404933875", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end
