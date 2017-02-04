=begin
 	 
Prompt the user to input their full name
Create a method that swaps their first and last name
Create a method that changes all the vowels to the next vowel in 'aeiou'
Create a method that changes all the rest of consonants to the next

=end

real_name = 'Felicia Torres'

swap_name = real_name.split(' ').reverse.join(' ')


def next_consonant(swap_name)
	consonants = "bcdfghjklmnpqrstvwxyz"
	index = 0
	while index < swap_name.length 
		until swap_name[index] == consonants[n]
			n+=1
		end
		if swap_name[index] == "z"
			swap_name[index] == "b"
		else 
		swap_name[index] = consonants[index].next!
		end
	index+=1
	end
	puts swap_name
end
=begin
def next_vowel()
	vowels = "aeiou"
	index = 0
	while index < swap_name.length 
		n = 0
		until swap_name[index] == vowels[n]
			n+=1
		end
		if swap_name[index] == "u"
			swap_name[index] == "a"
		else 
		swap_name[index] = vowels[index].next!
		end
	index+=1
	end
end

=end











