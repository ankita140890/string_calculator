class CalculatorsController < ApplicationController
  def index
  end

  def calculate
    begin
      @result = StringCalc.add(sanitize_newline_params)
    rescue => e
      @error = e.message
    end
    render :index
  end

  private

  def sanitize_newline_params
    params[:numbers].gsub("\\n", "\n")
  end

end
