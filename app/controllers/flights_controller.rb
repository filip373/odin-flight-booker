class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @passengers = (1..4).to_a
    @dates = Flight.all.map { |f| f.date_wo_time }
  end
end
