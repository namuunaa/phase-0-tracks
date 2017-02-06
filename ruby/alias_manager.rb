=begin
 	 
-Create a method that swaps their first and last name
-Create a method that changes all the vowels to the next vowel in 'aeiou'
	-Create a loop that goes through all the letters of the name
	-When the letter matches a letter in vowels list, 
	change it to the next vowel in the vowels list
	-Until all the letters are swapped, do the loop
	-Save the newly swapped name in a variable
-Create a method that changes all the rest of consonants to the next
	-Iterate through all the letters and change the letter to the next one
	in the consonants list.
-Get user input for name and give the fake name as output until they say quit.
-Print all the data user entered
=end


real_name = "Felicia Torres"
swap_name = real_name.split(" ").reverse.join(" ")

#Change vowels in name to next vowels
def next_vowel(name)
	vowels = ["a", "e", "i", "o", "u"]
	index = 0
	name = name.split('') # string to array
	name_change1 = name.map do |letter| 
		if vowels.include? letter 
			vowels.rotate(1)[vowels.index(letter)]
		else
			letter
		end
	end
	name_change1.join  # new array back to string
end

#p next_vowel("Felicia")

#Change the consonants to next consonant
def next_consonant(name)
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", 
		"m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	index = 0
	name = name.split('') # string to array
	name_change2 = name.map do |letter| 
		if consonants.include? letter 
			consonants.rotate(1)[consonants.index(letter)]
		else
			letter
		end
	end
	name_change2.join
end


p next_vowel("Felicia")
p next_consonant("Felicia")








