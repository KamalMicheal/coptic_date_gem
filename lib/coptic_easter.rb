require "coptic_date/version"
require "date"

module CopticEaster
  def self.calculate_easter_date(greg_year)
    # This function calculates easter date for a Gregorian year
    days_to_add = (((greg_year % 19) *19) + 24) % 30

    easter_date = Date.new(greg_year, 3, 21) + days_to_add

    if easter_date < Date.new(greg_year, 3, 31)
      easter_date += 34
    else
      easter_date += 4
    end

    begin
      easter_date += 1
    end while !easter_date.sunday?
    return easter_date
  end
end