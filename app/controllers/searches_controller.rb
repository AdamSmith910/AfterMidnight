class SearchesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @results = Result.all
  end
end
