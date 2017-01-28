puts "How many employees will be processed?"
employee_count = gets.chomp.to_i

n = 0

until n >= employee_count
	#vampire interview questions
	puts "What is your name?"
	name = gets.chomp.upcase

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp.downcase

	puts "Would you like to enroll in the company’s health insurance?(y/n)"
	insurance = gets.chomp.downcase

	puts "Please name any allergies you have one at a time. Type 'done' when you're finished."
	allergies = gets.chomp.downcase 

	until allergies == "done" || allergies == "sunshine"
	 	allergies = gets.chomp.downcase 
	end

	if allergies == "sunshine"
		puts "Probably a vampire."
	else
		#vampire detection logic
		if (name == "DRAKE CULA" )|| ( name == "TU FANG")
			puts "Definitely a vampire."

			elsif (age == 2017 - year_born) && ( garlic_bread == "y" || insurance == "y" ) 
				puts "Probably not a vampire."

			elsif (age != 2017 - year_born)  && (garlic_bread == "n" || insurance == "n" )
				puts "Probably a vampire."

			elsif (age != 2017 - year_born)  && garlic_bread == "n" && insurance == "n" 
				puts "Almost certainly a vampire."

			else 
				puts "Results inconclusive."
		end
	end

n +=1
	
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
