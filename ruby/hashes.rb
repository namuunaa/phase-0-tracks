# Declare a hash to collect client's info with keys and value
# Ask the designer to fill out the keys with values



client = {
	client_name: "",
	age:"",
	number_of_children: "",
	decor_theme: "",
	color_inspiration: "",
	budget: ""
}

puts "What is your name?"
client[:client_name] = gets.chomp
puts "Age? Please provide your answer in integers."
client[:age] = gets.chomp.to_i
puts "How many children do you have? Please provide your answer in integers."
client[:number_of_children] = gets.chomp.to_i
puts "What decor theme would you like to use?"
client[:decor_theme] = gets.chomp
puts "What is your color inspiration?"
client[:color_inspiration] = gets.chomp
puts "What's is your estimated budget?Please provide your answer in integers."
client[:budget] = gets.chomp.to_i


puts client
