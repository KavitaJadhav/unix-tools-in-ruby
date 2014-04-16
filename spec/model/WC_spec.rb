require 'spec_helper'

describe "WC" do

  wc = WC.new
  wc.data = "AAA        ddd\nBBB eee\nCCC fff"


  it 'should return 3lines' do
    wc.line_count.should == 3
  end

  it 'should return 6 words' do
    wc.word_count.should == 6
  end

  it 'should return 30 characters' do
    wc.character_count.should == 30
  end

  it 'should return count 3 6 30' do
    wc.get_count("wlc").should == '3 6 30'
  end

  it 'should return count 3 6 for option lw' do
    wc.get_count("wl").should == '3 6'
  end

end