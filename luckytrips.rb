# We want a tourist to choose intensity, type and the continent
# based of this we suggest a destination.

# Rome - Italy, long, historical
# Paris - France, Short, budget
# Tokyo - Japan, short, adventure




# class Tourist
#   def initalize (name)
#     @name = name
#   end
#    attr_accessor :tourist_name
# end

require 'artii'

class Length
  def initialize (measure)
    @measure = measure
  end
  attr_accessor :measure
end

class Type
  def initialize (style)
    @style = style
  end
  attr_accessor :style
end

class Country
  def initialize (name)
    @name = name
  end
  attr_accessor :name
end

class Holiday
  def initialize(name, country, length, type)
    @name = name
    @length = length
    @country = country
    @type = type
  end
  attr_accessor :name, :length, :country, :type

  def self.all # Gives us all the holidays made with our holiday class.
    ObjectSpace.each_object(self).to_a
  end
end




# Rome - Italy, long, historical
# Paris - France, Short, budget
# Tokyo - Japan, short, adventure
short = Length.new("Short")

Holiday.new("Saucey", Country.new("Italy"), Length.new("Long"), Type.new("Historical"))
Holiday.new("Cheesey", Country.new("France"), short, Type.new("Budget"))
Holiday.new("Techy", Country.new("Japan"), short, Type.new("Adventure"))

holidays = Holiday.all

puts "Hi lets build a holiday!!"
puts "we have packages for the below countries"
holidays.each do |holiday|
  puts holiday.country.name
end

puts "would you like a Long holiday or a Short holiday"
length = gets.chomp
puts "Sick, you chose a #{length} holiday!!!"
puts "What type would you like? Historical, Budget or Adventure??"
style = gets.chomp
puts "Great, you want a #{style} holiday that is #{length}"
puts "let me think"
sleep(5)
system("Clear")

choice = holidays.select {|holiday|
  holiday.length.measure == length
  holiday.type.style == style} #.select go through the box of holidays and see which holiday has the same

puts "We have #{choice[0].name} #{choice[0].country.name} package for you"



a = Artii::Base.new :font => 'slant' #expecting one argument
puts a.asciify('Safe Travels')

# puts "You are going on a #{choice[0].length.measure}, #{choice[0].name} #{choice[0].trip.style}!!!" #look in the big box choice, within the second box and the first choice
