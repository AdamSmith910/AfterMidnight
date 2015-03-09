class ResultsController < ApplicationController
  def index
    @results = Result.all
  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      redirect_to results_index_path
    else
      flash[:alert] = "Unable to complete search"
      render "new"
    end
  end

  def show
    index
  end

  private

  def result_params
    params.require(:result).permit(:address)
  end
end
