puts "Deleting Database..."
Restaurant.destroy_all
puts "Database deleted."

puts "Creating Restaurants..."
100.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save
  puts "Saved Restaurant #{restaurant.id}..."
end
puts "Database seed complete!"
