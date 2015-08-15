require "coptic_date/version"

module CopticDate
  def calculate_date_base(greg_date)
    greg_date_day = greg_date.day
    greg_date_month = greg_date.month
    greg_date_year = greg_date.year

    if greg_date_month <= 2
      intA = greg_date_month + 12
      intB = greg_date_year - 1
    else
      intA = greg_date_month
      intB = greg_date_year
    end

    intC = (intB / 100).to_i
    intD = (intB / 400).to_i
    intE = 2 - intC + intD
    intF = ((intB + 4716) * 36525 / 100).to_i
    intG = ((intA + 1) * 306001 / 10000).to_i
    return (greg_date_day + intG + intF + intE - 1826553)
  end

  def calculate_remainder(greg_date)
    base_date = calculate_date_base(greg_date)
    c_year = base_date.div 365.25
    #puts "base_date #{base_date}"
    return ((base_date % 365.25) / 365.25) * 12.175
  end

  def self.get_coptic_year(greg_date)
    if (greg_date.month < 9 || (greg_date.month  == 9 && greg_date.day < 11))
      return greg_date.year - 284
    elsif (greg_date.month > 9 || (greg_date.month  == 9 && greg_date.day > 11))
      return greg_date.year - 283
    else
      #This means 11 September
      #This needs calculations
      c_year = greg_date.year - 284
      if c_year % 4 == 3 && greg_date.year % 4 == 3
        return c_year
      else
        return c_year + 1
      end
    end
  end

  def self.get_coptic_month(greg_date)
    c_year = get_coptic_year(greg_date)
    if c_year % 4 == 3 && greg_date.year % 4 == 3 && greg_date.month == 9 && greg_date.day == 11
      return 13
    else
      calculate_remainder(greg_date).to_i + 1
    end
  end

  def self.get_coptic_day(greg_date)
    c_year = get_coptic_year(greg_date)
    if c_year % 4 == 3 && greg_date.year % 4 == 3 && greg_date.month == 9 && greg_date.day == 11
      return 6
    else
      remainder = calculate_remainder(greg_date)
      #puts remainder
      cday = (("0." + remainder.to_s.split(".")[1]).to_f * 30).round
      cday < 1? 1 : cday
    end
  end

  def self.get_coptic_month_name(month_number)
    case coptic_month_number
    when 1
      "توت"
    when 2
      "بابه"
    when 3
      "هاتور"
    when 4
      "كيهك"
    when 5
      "طوبه"
    when 6
      "أمشير"
    when 7
      "برمهات"
    when 8
      "برموده"
    when 9
      "بشنس"
    when 10
      "بؤنة"
    when 11
      "أبيب"
    when 12
      "مسرى"
    else
      "النسئ"
    end
  end
end
