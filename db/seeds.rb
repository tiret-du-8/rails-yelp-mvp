require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORIES.sample
  )
end

puts "Finished! Created #{Restaurant.count} restaurants."
