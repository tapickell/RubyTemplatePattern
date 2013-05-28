require "template.rb"

describe BaseMonitor do
  before(:each) do
    @base = BaseMonitor.new
  end

  describe "newly initialized monitor" do
    it "should have inputs on initialization" do
      @base.inputs.should == [:hdmi, :dvi, :vga]
    end
  end

  describe "#size" do
    it "should throw called abstract method" do
      expect {@base.size}.to raise_exception(AbstractError, "Called abstract method")
    end
  end
end



describe BigMonitor do
  before(:each) do
    @big = BigMonitor.new
  end

  describe "newly initialized big monitor" do
    it "should have inputs on initialization" do
      @big.inputs.should == [:hdmi, :dvi, :vga]
    end
  end

  describe "#size" do
    it "should have a size of 27 inches" do
      @big.size.should == 27
    end
  end
end

describe LittleMonitor do
  before(:each) do
    @little = LittleMonitor.new
  end

  describe "newly initialized little monitor" do
    it "should have inputs on initialization" do
      @little.inputs.should == [:hdmi, :dvi, :vga]
    end
  end

  describe "#size" do
    it "should have a size of 17 inches" do
      @little.size.should == 17
    end
  end
end