# RELEASE 1 AREA
def status_update 
	puts "this is the status update"
	yield("called something")
	puts "all done"
end

# status_update { |name| puts "a string #{name}"} 


colors = ['red','blue','green','periwinkle']

books = {fiction: ['The Martian','Age of Innocense'],
					nonfiction: ['Encyclopedia','Book on Ruby']}

colors.each { |the_color| puts "this table color is #{the_color}"}

books.each { |style, titles| 
	puts "my favorite #{style} book is #{titles[0]}"}

colors.map! do |the_color|
	"dark " + the_color 
end
puts colors

puts books.map {|style, titles| titles.reverse}

#########################################################

# RELEASE 2 AREA

# 1: deleting if conditions are met
numbers = [1, 4, 28, 49, 29, 10]
numbers.delete_if {|num| num.even? }
puts numbers

rooms = {1 => "kitchen", 2 => "bathroom", 3 => "living room",
					4 => "bedroom"}
rooms.delete_if {|room_number,area| room_number < 2}
puts rooms

# 2: filter for if conditions are met
numbers = [1, 4, 28, 49, 29, 10]
numbers.keep_if {|num| num.even? }
puts numbers

rooms = {1 => "kitchen", 2 => "bathroom", 3 => "living room",
					4 => "bedroom"}
rooms.keep_if {|room_number,area| room_number < 2}
puts rooms

# 3: another way to filter for if conditions are met
numbers = [1, 4, 28, 49, 29, 10]
numbers.select! {|num| num.even? }
puts numbers

rooms = {1 => "kitchen", 2 => "bathroom", 3 => "living room",
					4 => "bedroom"}
rooms.select! {|room_number,area| room_number < 2}
puts rooms

# 4: remove elements until one is found that meets the criteria
numbers = [1, 4, 28, 49, 29, 10]
filtered_numbers = numbers.drop_while {|num| num <= 10}
puts filtered_numbers

fruit = {"apple" => "mild", "lemon" => "sour", "melon" => "sweet",
				"pineapple" => "tangy", "lime" => "sour"}

found_a_sweet_fruit = false
fruit.delete_if do |the_fruit,taste| 
	if taste == "sweet" 
		found_a_sweet_fruit = true
	end

	taste != "sweet" && found_a_sweet_fruit == false
end
puts fruit