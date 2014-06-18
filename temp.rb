class Celsius
  def initialize(temp)
    @temp = temp
  end

  def to_s
    "#{convert} degrees C"
  end

  private
  def convert
    convert = (@temp * 1.8) + 32
    convert.round
  end


end

temp1 = Celsius.new(15)

puts temp1.to_s