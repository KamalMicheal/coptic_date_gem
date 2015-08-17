require "coptic_date/version"
require "date"

module CopticVariableFeasts
  def self.big_fast_start_date(greg_year)
    CopticEaster::calculate_easter_date(greg_year) - 55
  end

  def self.jonah_fast_start_date(greg_year)
    big_fast_start_date(greg_year) - 14
  end
end