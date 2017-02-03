# Declare an empty hash to later collect client's info with keys and values
# Ask the user to input answers to questions
# Save the result in a hash as keys and values
# Print the result to the user
# Ask the user if they need to update the answer
# If they need to update, prompt them for the change. 
# If no changes, ask them to say none and done.


client = {
	client_name: "",
	age: "",
	decor_theme: "",
	color_inspiration: "",
	budget: ""
}


puts "What is your name?"
client[:client_name] = gets.chomp
puts "Age? Please provide your answer in integers."
client[:age] = gets.chomp.to_i
puts "What decor theme would you like to use?"
client[:decor_theme] = gets.chomp
puts "What is your color inspiration?"
client[:color_inspiration] = gets.chomp
puts "What's is your estimated budget?Please provide your answer in integers."
client[:budget] = gets.chomp.to_i

puts "Here is your information"
puts client

#Ask to update key
puts "If there's anything you would like to change, enter the option you'd like to change. 
If everything looks great, go ahead and type 'none'."
update = gets.chomp
update = update.to_sym

	if update ==  "none" 
		puts "Great, no changes will be made."

	elsif update == :client_name
		puts "Enter the new value you'd like to add instead." 
		client[:client_name] = gets.chomp

	elsif update == :age
		puts "Enter the new value you'd like to add instead." 
		client[:age] = gets.chomp.to_i

	elsif update == :decor_theme
		puts "Enter the new value you'd like to add instead." 
		client[:decor_theme] = gets.chomp

	elsif update == :color_inspiration
		puts "Enter the new value you'd like to add instead." 
		client[:color_inspiration] = gets.chomp

	elsif update == :budget
		puts "Enter the new value you'd like to add instead." 
		client[:budget] = gets.chomp.to_i
	end
	
puts client	

