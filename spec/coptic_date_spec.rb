require 'spec_helper'

describe CopticDate do
  # This may needs some cleaning
  it '2015-8-14 should return 1731-12-8' do
    requested_date = Time.new(2015,8,14)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1731)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(12)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(8)
  end

  it '2015-5-10 should return 1731-9-2' do
    requested_date = Time.new(2015,5,10)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1731)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(9)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(2)
  end

  it '2015-9-8 should return 1731-13-3' do
    requested_date = Time.new(2015,9,8)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1731)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(13)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(3)
  end

  it '2009-1-11 should return 1725-5-3' do
    requested_date = Time.new(2009,1,11)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1725)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(5)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(3)
  end

  it '2009-9-10 should return 1725-13-5' do
    requested_date = Time.new(2009,9,10)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1725)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(13)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(5)
  end

  it '2009-9-10 should return 1725-13-5' do
    requested_date = Time.new(2009,9,10)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1725)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(13)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(5)
  end

  it '2005-9-11 should return 1722-1-1' do
    requested_date = Time.new(2005,9,11)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1722)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(1)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(1)
  end

  it '2004-9-11 should return 1731-1-1' do
    requested_date = Time.new(2014,9,11)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1731)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(1)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(1)
  end

  it '2011-9-11 should return 1727-13-6' do
    requested_date = Time.new(2011,9,11)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1727)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(13)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(6)
  end

  it '2011-9-12 should return 1728-1-1' do
    requested_date = Time.new(2011,9,12)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1728)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(1)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(1)
  end

  it '2011-11-12 should return 1728-3-2' do
    requested_date = Time.new(2011,11,12)
    expect(CopticDate::get_coptic_year(requested_date)).to eq(1728)
    expect(CopticDate::get_coptic_month(requested_date)).to eq(3)
    expect(CopticDate::get_coptic_day(requested_date)).to eq(2)
  end
end
