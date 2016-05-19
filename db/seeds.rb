# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nyc = Airport.create!(code: 'NYC')
sfo = Airport.create!(code: 'SFO')
waw = Airport.create!(code: 'WAW')
ldz = Airport.create!(code: 'LDZ')

Flight.create!(start_date: 2.weeks.since, duration: 425.minutes,
  from_airport: nyc, to_airport: sfo)
Flight.create!(start_date: 4.weeks.since, duration: 60.minutes,
  from_airport: ldz, to_airport: waw)
Flight.create!(start_date: 1.week.since, duration: 600.minutes,
  from_airport: sfo, to_airport: ldz)
