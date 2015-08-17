require "coptic_date/version"
require "date"

module CopticVariableFeasts
  def self.big_fast_start_date(greg_year)
    CopticEaster::calculate_easter_date(greg_year) - 55
  end

  def self.jonah_fast_start_date(greg_year)
    big_fast_start_date(greg_year) - 14
  end

  def self.messengers_fast_start_date(greg_year)
    CopticEaster::calculate_easter_date(greg_year) + 50
  end

  def self.messengers_fast_duration(greg_year)
    # I know it should always end on July 12, but I am doing the calculations to make sure I understand things right
    easter_date = CopticEaster::calculate_easter_date(greg_year)
    coptic_month = CopticDate::get_coptic_month(easter_date)
    coptic_day = CopticDate::get_coptic_day(easter_date)
    dates_to_add = coptic_month==7? 45:15

    (30 - coptic_day) + dates_to_add
  end

  def self.messengers_feast_date(greg_year)
    messengers_fast_start_date(greg_year) + messengers_fast_duration(greg_year)
  end
end