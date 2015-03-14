class SearchesController < ApplicationController
  def new
  end

  def create
    
  end

  def show
    @address = "#{params[:street]}, #{params[:city]}, #{params[:state]} #{params[:zip]}"
    @coords = Geocoder.coordinates(@address)
    @client = GooglePlaces::Client.new(ENV['GOOGLE_API'])
    @results = @client.spots(@coords[0].to_s.to_f, @coords[1].to_s.to_f, radius: 1000, types: ['food', 'restaurant'])
  end
end
