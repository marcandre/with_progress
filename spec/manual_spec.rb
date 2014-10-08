require 'with_progress'
require 'backports/2.0.0/range/size'

describe "Progress" do
  it "looks good" do
    (0...10).with_progress do
      sleep 0.5
    end
    puts "Did it look good?"
  end
end
