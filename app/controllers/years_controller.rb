class YearsController < ApplicationController
  def leap_year
    msg = 'Is a leap year.'

    respond_to do |format|
      format.json { render json: { message: msg } }
    end
  end
end
