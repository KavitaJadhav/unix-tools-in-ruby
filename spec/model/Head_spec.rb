require 'spec_helper'

describe "WC" do
  data = "AAA        ddd\nBBB eee\nCCC fff"
  wc = WC.new

  it 'should return 3 lines of data' do
    wc.line_count(data).should == 3
  end

end