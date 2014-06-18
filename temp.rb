class Celsius
  def initialize(temp, date)
    @temp = temp
    @date = date
  end

  def to_s
    "#{@date} | #{@temp} degrees C | #{convert} degrees F"
  end

  private
  def convert
    convert = (@temp * 1.8) + 32
    convert.round
  end
end

# get date
puts "what is the date?"
date = gets.chomp

# get temp in Celsius
puts "what is the temp in Celsius?"
temp = gets.chomp

# create new instance of Celsius with the answers from previous answers being passed in as parameters
temp2 = Celsius.new(temp.to_i, date)

# call the instance using the to_s method which has converted the temp and dispalys all theinfo
puts temp2.to_s