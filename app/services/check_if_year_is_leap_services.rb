class CheckIfYearIsLeapServices
  def initialize(input_year)
    @year = input_year.to_i
  end

  def is_leap?
    return true if (@year % 400 == 0)

    return true if (@year % 4 == 0) && (@year % 100 != 0)

    return false if (@year % 100 == 0) && (@year % 400 != 0)

    false
  end
end
