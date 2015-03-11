class ResultsController < ApplicationController
  
  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      redirect_to @result
    else
      flash[:alert] = "Unable to complete search"
      render "new"
    end
  end

  def show
    @results = Result.all
    @result = Result.find(params[:id])
  end

  private

  def result_params
    params.require(:result).permit(:street, :city, :state, :zip)
  end
end
