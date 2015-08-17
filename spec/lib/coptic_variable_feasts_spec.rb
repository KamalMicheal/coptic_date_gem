require 'spec_helper'
require 'date'

describe CopticVariableFeasts do
  it "2014 should return 2014.02.24" do
    expect(CopticVariableFeasts::big_feast_start_date(2014)).to eq(Date.new(2014,2,24))
  end

  it "2011 should return 2011.02.28" do
    expect(CopticVariableFeasts::big_feast_start_date(2011)).to eq(Date.new(2011,2,28))
  end

  it "2008 should return 2008.03.03" do
    expect(CopticVariableFeasts::big_feast_start_date(2008)).to eq(Date.new(2008,3,3))
  end
end
