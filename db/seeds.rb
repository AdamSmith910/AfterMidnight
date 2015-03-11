# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do 
  Result.create!(
    name: Faker::Company::name,
    distance:  Faker::Number.number(1),
    open:  true,
    closes_at:  Time.now,
    street: "1600 Glenarm Place",
    city: "Denver",
    state: "CO",
    zip: "80202"
    )
end
