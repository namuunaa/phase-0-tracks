bookshelf = {
	fiction: [
		'Lolita', 
		'The Martian', 
		'1Q84'
	],
	non_fiction: [
		'World encyclopedia',
		'The 4 hour work week'
	],
	young_adult: [
		'Harry Potter',
		'Twilight'
	],
	biography: [
		'Steve Jobs',
		'Dairy of Anne Frank'
	]
}

puts bookshelf[:biography][1]

bookshelf[:fiction][3] = 'Into the Wild'
puts bookshelf[:fiction]

bookshelf[:young_adult].delete_at(1)
puts bookshelf[:young_adult]