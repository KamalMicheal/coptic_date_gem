require 'spec_helper'

describe CopticEaster do
  it "Easter for 1980 should be 1980.04.06" do
    expect(CopticEaster::calculate_easter_date(1980)).to eq(Date.new(1980,4,6))
  end

  it "Easter for 2013 should be 2013.05.05" do
    expect(CopticEaster::calculate_easter_date(2013)).to eq(Date.new(2013,5,5))
  end

  it "Easter for 2014 should be 2014.04.20" do
    expect(CopticEaster::calculate_easter_date(2014)).to eq(Date.new(2014,4,20))
  end

  it "Easter for 2015 should be 2015.04.12" do
    expect(CopticEaster::calculate_easter_date(2015)).to eq(Date.new(2015,4,12))
  end

  it "Easter for 2016 should be 2016.05.01" do
    expect(CopticEaster::calculate_easter_date(2016)).to eq(Date.new(2016,5,1))
  end

  it "Easter for 2017 should be 2017.04.16" do
    expect(CopticEaster::calculate_easter_date(2017)).to eq(Date.new(2017,4,16))
  end

  it "Easter for 2018 should be 2018.04.08" do
    expect(CopticEaster::calculate_easter_date(2018)).to eq(Date.new(2018,4,8))
  end

  it "Easter for 2020 should be 2020.04.19" do
    expect(CopticEaster::calculate_easter_date(2020)).to eq(Date.new(2020,4,19))
  end

  it "Easter for 2022 should be 2022.04.24" do
    expect(CopticEaster::calculate_easter_date(2022)).to eq(Date.new(2022,4,24))
  end

  it "Easter for 2028 should be 2028.04.16" do
    expect(CopticEaster::calculate_easter_date(2028)).to eq(Date.new(2028,4,16))
  end

  it "Easter for 2030 should be 2030.04.28" do
    expect(CopticEaster::calculate_easter_date(2030)).to eq(Date.new(2030,4,28))
  end
end