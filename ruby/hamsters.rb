puts "What's the name of the hamster?"
name = gets.chomp
puts "How loud is your hamster? (1-10, 10 being loudest)"
volume_level = gets.chomp
puts "What color is your hamster's fur?"
fur_color = gets.chomp
puts "Is the hamster in good condition to adopt? (Y/N) "
condition = gets.chomp
puts "Estimated Age? "
age = gets.chomp 

if "#{age}" == ""
	age = nil
end 

#volume = "#{volume_level}".to_i
#age = "#{age}".to_i

puts "The hamster's name is  #{name}"
puts "The volume level is #{volume_level}"
puts "The fur color is #{fur_color}"
puts "The hamster is in good condition: #{condition}"
puts "Estimated age is #{age}"


