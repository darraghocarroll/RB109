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


p rand(20..200)

def room 
  prompt("Enter the length of the room in meters: ")
  length = gets.chomp!.to_f

  prompt("Enter the width of the room in meters: ")
  width = gets.chomp!.to_f

  area = (length * width).round(2)
  area_ft = format("%.2f", (area * 10.7639))

end 


def age
  print_in_box("The area is #{area} square meters (#{area_ft} square_ft)")

  prompt('What is your age?')
  age = gets.chomp.to_i

  prompt('At what age would you like to retire?')
  retire_age = gets.chomp.to_i

  more_years = retire_age - age 
  year_retired = 2023 + more_years

  print_in_box("It's #{Time.now.year}, you will retire in #{year_retired}! Only #{more_years} years to go!")
end 

def name
  name = "darragh!"

  if name[-1] == "!":wq
    puts "!!!"
  else
    puts "hi"
  end

end 

def number 

  numbers = (1..99)

  numbers.each {|x| puts x if x.odd?}

  1.upto(99) {|x| puts x if x.odd?}

  numbers = (1..99).to_a

  numbers.select {|x| p x if x.odd?}

  (1..99).step(2) {|n| puts n}

  prompt("Please enter an interger greater than 0: ")
  int = gets.chomp.to_i

  prompt("Please enter 's' to compute sum, 'p' to compute the product")
  decision = gets.chomp

  result = 0
  if decision == 's'
    result = (1..int).inject(:+) 
  else 
    result = 1
    result = (1..int).reduce{|memo, n| memo * n}  
  end

  p result

end

def return_negative(n)
  if n > 0
    n -= 2*n
  elsif n == 0
    "There is no such thing as negative 0 in ruby "
  else
    n
  end
end

# -number.abs 

def searching
  counter = %w[1st 2nd 3rd 4th 5th last]
  numbers = []

  (0..5).each do |x|
    prompt("Enter the #{counter[x]} number: ")
    numbers << gets.chomp.to_i
  end 

  last = numbers.pop
  
  if numbers.include? (last) 
    puts "The number #{last} appears in #{numbers}"
  else
    puts "The number #{last} does not appear in #{numbers}"
  end
end

def characters
  print "Please write word or multiple words: "
  input = gets.chomp!
  
  counter = input.delete(" ").length
  print("There are #{counter} characters in \"#{input}\".")

end 

def multiply
  5.reduce(:**)
end 

def xor?(one, two)
  counter = 0
  counter += 1 if one == true 
  counter += 1 if two == true 

  if counter == 1
    true
  else
    false 
  end
end

def real_palindrome?(word)
  word = word.downcase
  word.gsub!(/[^a-z0-9]/,"") # word.delete('^a-z0-9') or /\w/ .scan will place into an array
  word == word.reverse
end

def palindromic_number?(number)
  p number
  number = number.to_s 
  p number
  index = 0
  loop do
    if number[index] == "0"
      number = number.delete(number[index])
      index += 1
    else
      break
    end
  end
  p number 
  number == number.reverse
end

def uppercase?(str)
  new_str = str.delete("[^a-z], ' ' ")
  p new_str
  str == new_str
end



