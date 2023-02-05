arr = [9, 2, 3, 4]

p arr.inject {|memo, x| memo + x }

p arr.inject(:*)

def repeat(hello,x)
  x.times{|x| puts hello}
end 

repeat('hello', 3)

def is_odd?(x)
  x.odd?
end

p is_odd?(6)

def calculate_bonus(salary,bonus)
  bonus ? salary / 2 : bonus = 0
end 
require "../prompt_messages.rb"


def triangle(dimension,location = "top_left")
  case location
    when "top_right"
      number_of_spaces = dimension - 1 
      stars = 1
      loop do
        number_of_spaces.times {print " "}
        stars.times {print "*"}
        puts ""
        number_of_spaces -= 1
        stars += 1
        break if number_of_spaces == 0
      end 
    when "top_left"
      stars = 1
      loop do
        stars.times {print "*"}
        puts ""
        stars += 1
        break if stars == dimension
      end 
    when "bottom_left"
      stars = dimension 
      loop do
        stars.times {print "*"}
        puts ""
        stars -= 1
        break if stars == 0
      end 
    when "bottom_right"
      number_of_spaces = 0 
      stars = dimension
      loop do
        number_of_spaces.times {print " "}
        stars.times {print "*"}
        puts ""
        number_of_spaces += 1
        stars -= 1
        break if stars == 0
      end 
  end
end 

triangle(80,"bottom_right")


mad_lib = {
  noun: "dog",
  verb: "walk",
  adj: "blue",
  adv: "quickly"
}


