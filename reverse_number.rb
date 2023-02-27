number = 12345

def reversed_number (number)
  number = number.to_s
  reversed_number = ""

  number_of_digits = number.length
  counter = -1

  number_of_digits.times do 
    reversed_number << number[counter]
    counter -= 1
  end

  counter = 0

  loop do
    if reversed_number[counter] == "0"
      reversed_number.delete_prefix!("0")
      counter += 1
    else
      break
    end
  end

  reversed_number.to_i
end

p reversed_number(12345)
p reversed_number(12213) 
p reversed_number(456) 
p reversed_number(12000)
p reversed_number(12003) 
p reversed_number(1)

def reverse_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

p reverse_number(12000)

