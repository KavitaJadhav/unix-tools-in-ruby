require 'spec_helper'

describe "WC" do
  data = "AAA        ddd\nBBB eee\nCCC fff"
  wc = WC.new

  it 'should return 3lines' do
    wc.line_count(data).should == 3
  end

  it 'should return 6 words' do
    wc.word_count(data).should == 6
  end

  it 'should return 30 characters' do
    wc.character_count(data).should == 30
  end

  it 'should return count 3 6 30' do
    wc.get_count(data,"wlc").should == '3 6 30'
  end

  it 'should return count 3 6 for option lw' do
    wc.get_count(data,"wl").should == '3 6'
  end

end