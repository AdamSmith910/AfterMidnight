# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@results = []
n = 0

10.times do
  result = Search.new
  result.name = Faker::Name.name
  result.distance = n+1
  result.open = true
  @results << result
end
