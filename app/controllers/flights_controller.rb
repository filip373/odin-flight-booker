class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @passengers = (1..4).to_a
    @dates = Flight.all.order(:start_date).map { |f| f.date_wo_time }.uniq
    unless params[:search].nil?
      @results = Flight.where(start_airport_id: params[:search][:from],
        finish_airport_id: params[:search][:to])
        .select { |f| f.date_wo_time == params[:search][:date] }
      @pass_number = params[:search][:pass_number]
    end
  end
end
