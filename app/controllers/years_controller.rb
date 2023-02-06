class YearsController < ApplicationController
  def leap_year
    check_leap_year = CheckIfYearIsLeapServices.new(params[:year_input])

    status = 200

    if check_leap_year.is_leap?
      msg = 'Is a leap year.'
    else
      msg = 'Not an leap year.'
      status = 400
    end

    respond_to do |format|
      format.json { render json: { message: msg}, status: status }
    end
  end
end
