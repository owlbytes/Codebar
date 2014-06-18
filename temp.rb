class Celsius
  def initialize(temp)
    @temp = temp
  end

  def convert
    convert = (@temp * 1.8) + 32
    convert = convert.round
    puts " temp in farenheight is #{convert}"
  end
end

temp1 = Celsius.new(15)

temp1.convert