class Member
  def initialize(full_name)
    @full_name = full_name
  end
end

class Student < Member
  def initialize(full_name, about)
    super(full_name)
    @about = about
  end

    def describe_yourself
    puts "my name is #{@full_name}"
    puts "Oh and by the way: #{@about}"
  end
end

class Coach  < Member
  def initialize(full_name, bio)
    super(full_name)
    @bio = bio
    @skills = []
  end

  def describe_yourself
    puts "my name is #{@full_name}"
    puts "I'm good at #{@skills}"
    puts "Oh and by the way: #{@bio}"
  end

  def add_skill(skill_name)
    @skills << skill_name
  end
end

class Workshop
  def initialize(date, venue_name)
    @date = date
    @venue_name = venue_name
    @coaches = []
    @students = []
  end

  def add_participant(member)
    if member.is_a?(Coach)
      @coaches << member
    else
      @students << member
    end
  end

  def print_details
    puts "the workshop is at #{@venue_name} on #{@date}."
    @coaches.each do |coach|
      coach.describe_yourself
    end
    @students.each do |student|
      student.describe_yourself
    end
  end
end

workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)

workshop.print_details