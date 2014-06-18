
class Tutorial
  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
  end

  def type_comparison(tutorial)
    if @type == tutorial.type
      is_harder_than?((tutorial))
    else
      puts "you can't compare two different tutorials"
    end
  end

  def is_harder_than?(tutorial)
    if @difficulty > tutorial.difficulty
      puts "true" 
    else
      puts "false"
    end
  end

  def difficulty
    @difficulty
  end

  def type
    @type
  end
end

tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, 2)
turorial2 = Tutorial.new("Introduction to JavaScript", :javascript, 1)
tutorial3 = Tutorial.new("Introduction to JavaScript", :javascript, 4)

tutorial1.type_comparison(turorial2)

turorial2.type_comparison(tutorial3)