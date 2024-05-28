class CalculatorsController < ApplicationController
  def index
  end

  def calculate
    begin
      @result = StringCalc.add(params[:numbers])
    rescue => e
      @error = e.message
    end
    render :index
  end
end
