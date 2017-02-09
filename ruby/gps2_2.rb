# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string of items and save it in a new array list
  # set default quantity(key, value) => create hash
  # print the list to the console [can you use one of your other methods here?]
# output: [hash list]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
	#give an input to add to the list
	#save the key & value to the hash
# output: hash with newly added items nad quantity

# Method to remove an item from the list
# input: item name
# steps: delete the input from the list
# output: list without the removed item

# Method to update the quantity of an item
# input: item, updated quantity
# steps: reassign a new quantity to an item
# output: list with updated quantity of items

# Method to print a list and make it look pretty
# input: puts statement for the grocery list, grocery list
# steps: print the hash
# output: grocery list

def grocery_list(grocery)
	groceries = grocery.split(" ")
	grocery_hash = { }
	groceries.each do |item| 
		grocery_hash[item] = 0
	end
	return grocery_hash
end

def add_items(list, item, quantity)
	list[item] = quantity
	return list
end

def remove(list, item)
	list.delete(item)
	return list
end

def update(list, item, new_quantity)
	list[item] = new_quantity
	return list
end

def print_list(list)
	puts "Below is your grocery list:"
 	list.each do |item, quantity| 
 	 "#{item}, #{quantity}"
	end
end

#Driver Code
list = grocery_list("")
add_items(list, "Lemonade", 2 )
add_items(list, "Tomatoes", 3 )
add_items(list, "Onions", 1 )
add_items(list, "Ice Cream", 4 )
remove(list, "Lemonade")
update(list, "Ice Cream", 1)
puts print_list(list)

# What did you learn about pseudocode from working on this challenge?
	# Pseudocoding helps us to keep organized and helps with writing our program structured. 
# What are the tradeoffs of using arrays and hashes for this challenge?
	# For this challenge using hashes is better, because we're working with a list of lists. 
# What does a method return?
	# Method returns the last line of code performed in the method
# What kind of things can you pass into methods as arguments?
	# Any objects.
# How can you pass information between methods?
	# Store the result of a method in a new variable and set the variable as a parameter in the method you want to pass.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# I think i now have a better grasp of how to access a method within a method. And the using block and iterating.







