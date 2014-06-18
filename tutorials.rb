

class Tutorial
  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
    @weight = {:easy => 1, :medium => 2, :hard => 3}
  end

  def type_comparison(tutorial)
    if @type == tutorial.type
      is_harder_than?((tutorial))
    else
      puts "you can't compare two different tutorials"
    end
  end

  def is_harder_than?(tutorial)
    if @weight[@difficulty] > @weight[tutorial.difficulty]
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

tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :easy)
turorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :medium)
tutorial3 = Tutorial.new("Introduction to JavaScript 2", :javascript, :medium)
tutorial4 = Tutorial.new("Introduction to JavaScript 2", :javascript, :hard)

#cannot compare
tutorial1.type_comparison(turorial2)

#2 is harder than 3
tutorial4.type_comparison(turorial2)

#3 is not harder than 4
tutorial3.type_comparison(tutorial4)
