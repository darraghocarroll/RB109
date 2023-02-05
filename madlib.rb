require "../prompt_messages.rb"

mad_lib = {
  noun: "",
  verb: "",
  adj: "",
  adv: ""
}

prompt("Enter a noun: ")
mad_lib[:noun] = gets.chomp!

prompt("Enter a verb: ")
mad_lib[:verb] = gets.chomp!

prompt("Enter a adjective: ")
mad_lib[:adj] = gets.chomp!

prompt("Enter a adverb: ")
mad_lib[:adv] = gets.chomp!

print_in_box("Do you #{mad_lib[:verb]} your #{mad_lib[:adj]} #{mad_lib[:noun]} #{mad_lib[:adv]}?" +  
 " That's great!")


