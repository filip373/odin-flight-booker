class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new(flight: Flight.find(params[:flight_id]))
    params[:pass_number].to_i.times { @booking.passengers.build }
  end

  def create
    if @booking = Booking.create(booking_params)
      @booking.booking_passengers.each do |bp|
        PassengerMailer.book_email(bp).deliver_later!
      end
      flash[:success] = 'Flight booked'
      redirect_to @booking
    else
      flash.now[:error] = 'Error, try again'
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end
