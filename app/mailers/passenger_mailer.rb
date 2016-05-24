class PassengerMailer < ApplicationMailer
  def book_email(booking_passenger)
    @passenger = booking_passenger.passenger
    @flight = booking_passenger.flight
    mail(to: @passenger.email, subject: 'Flight booked')
  end
end
