class BaseMonitor
  attr_reader :inputs
  def initialize
    @inputs = :hdmi, :dvi, :vga
  end

  def size
    raise AbstractError, "Called abstract method"
  end
end

class BigMonitor < BaseMonitor
  def size
    27
  end
end

class LittleMonitor < BaseMonitor
  def size 
    17
  end
end

class AbstractError < StandardError
end
