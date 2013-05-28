require "template.rb"

describe BaseMonitor do
  before(:each) do
    @base = BaseMonitor.new
  end

  it "should have inputs on initialization" do
    @base.inputs.should = [:hdmi, :dvi, :vga]
  end
  
end
