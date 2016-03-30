# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.destroy_all
Island.destroy_all
Country.destroy_all
Booking.destroy_all
Yacht.destroy_all
User.destroy_all

countries = Country.create([{ name: 'Greece' }, { name: 'Spain' }, { name: 'Croatia' }])

p "#{Country.count} countries created"


islands = Island.create([
  { name: 'Mykonos', country_id: 1 },
  { name: 'Kea', country_id: 1 },
  { name: 'Kythnos', country_id: 1 },
  { name: 'Milos', country_id: 1 },
  { name: 'Sifnos', country_id: 1 },
  { name: 'Serifos', country_id: 1 },
  { name: 'Santorini', country_id: 1 },
  { name: 'Ibiza', country_id: 2 },
  { name: 'Mallorca', country_id: 2 },
  { name: 'Costa Brava', country_id: 2 },
  { name: 'Dubrovnik', country_id: 3 },
  { name: 'Brac', country_id: 3 },
  { name: 'Mljet', country_id: 3 }
])

p "#{Island.count} islands created"

10.times do
  Yacht.create(
    name: Faker::Name.first_name,
    capacity: Faker::Number.between(6, 10),
    cost_per_day: Faker::Number.between(200, 1000),
    country_id: countries.sample
    )
end
p "#{Yacht.count} yachts created"

yachts = Yacht.all

(1..10).each do |i|
  user = User.new
  user.email = i.to_s + '@example.com'
  user.password = 'valid_password'
  user.password_confirmation = 'valid_password'
  user.save!
end

p "#{User.count} users created"

users = User.all


10.times do
  Booking.create(
    days: Faker::Number.between(1, 10),

    user_id: users.sample.id,
    yacht_id: yachts.sample.id
  )
end

p "#{Booking.count} bookings created"

bookings = Booking.all
