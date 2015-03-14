class SearchesController < ApplicationController
  def new
  end

  def create
    
  end

  def show
    @client = GooglePlaces::Client.new(ENV['GOOGLE_API'])
    @client.spots()
  end
end
