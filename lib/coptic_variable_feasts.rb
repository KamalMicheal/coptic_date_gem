require "coptic_date/version"
require "date"

module CopticVariableFeasts
  def self.big_feast_start_date(greg_year)
    CopticEaster::calculate_easter_date(greg_year) - 55
  end
end