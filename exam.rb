
list = %w[Joe Billy Shawn Carter]                  

launch_school = ": Launch School"

list.each do |name, bootcamp = ": Bootcamp"|
  if name == "Shawn"
    name << launch_school
  else 
    name << bootcamp  
  end 
end

p list 

                                                 
def congratulate_student(name)
  name = name.upcase!
  name << " made the correct choice!"
end

student_name = "Shawn"

congratulate_student(student_name)

puts student_name



