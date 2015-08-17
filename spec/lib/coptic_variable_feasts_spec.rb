require 'spec_helper'
require 'date'

describe CopticVariableFeasts do
  it "2014 big fast should return 2014.02.24" do
    expect(CopticVariableFeasts::big_fast_start_date(2014)).to eq(Date.new(2014,2,24))
  end

  it "2011 big fast should return 2011.02.28" do
    expect(CopticVariableFeasts::big_fast_start_date(2011)).to eq(Date.new(2011,2,28))
  end

  it "2008 big fast should return 2008.03.03" do
    expect(CopticVariableFeasts::big_fast_start_date(2008)).to eq(Date.new(2008,3,3))
  end

  it "2014 Jonah fast should return 2014.02.10" do
    expect(CopticVariableFeasts::jonah_fast_start_date(2014)).to eq(Date.new(2014,2,10))
  end

  it "2011 Jonah fast should return 2011.02.14" do
    expect(CopticVariableFeasts::jonah_fast_start_date(2011)).to eq(Date.new(2011,2,14))
  end

  it "2008 Jonah fast should return 2008.02.18" do
    expect(CopticVariableFeasts::jonah_fast_start_date(2008)).to eq(Date.new(2008,2,18))
  end
end
