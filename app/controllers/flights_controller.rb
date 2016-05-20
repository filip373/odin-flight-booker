class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @passengers = (1..4).to_a
    @dates = Flight.all.order(:start_date).map { |f| f.date_wo_time }.uniq
    unless params[:from].nil? || params[:to].nil? ||
      params[:date].nil? || params[:pass_number].nil?
      @results = Flight.where(start_airport_id: params[:from], finish_airport_id: params[:to])
        .select { |f| f.date_wo_time == params[:date] }
      @pass_number = params[:pass_number]
    end
  end
end
