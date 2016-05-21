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

flight1 = Flight.create!(start_date: 2.weeks.since, duration: 425.minutes,
  from_airport: nyc, to_airport: sfo)
flight2 = Flight.create!(start_date: 4.weeks.since, duration: 60.minutes,
  from_airport: ldz, to_airport: waw)
flight3 = Flight.create!(start_date: 4.weeks.since + 20.minutes, duration: 80.minutes,
  from_airport: ldz, to_airport: waw)
flight4 = Flight.create!(start_date: 1.week.since, duration: 600.minutes,
  from_airport: sfo, to_airport: ldz)
flight5 = Flight.create!(start_date: 1.week.since + 2.minutes, duration: 70.minutes,
  from_airport: waw, to_airport: ldz)

passenger1 = Passenger.create!(name: 'Andrzej', email: 'andrzej@email.com')
passenger2 = Passenger.create!(name: 'Mirosław', email: 'miroslaw@email.com')
passenger3 = Passenger.create!(name: 'Sławomir', email: 'slawomir@email.com')

booking1 = Booking.create!(flight: flight3)
booking2 = Booking.create!(flight: flight3)
booking3 = Booking.create!(flight: flight1)

BookingPassenger.create!(booking: booking1, passenger: passenger1)
BookingPassenger.create!(booking: booking1, passenger: passenger2)
BookingPassenger.create!(booking: booking2, passenger: passenger1)
BookingPassenger.create!(booking: booking3, passenger: passenger3)
