=begin
	1.Receive a string
	2.Get the string length.
	3.Set an integer variable index = 0. And while index < string length,
	forward the string letter that the index is currently at by 1 alphabet letter.
	4.Change the string letter at the index permanently to new alphabet letter.
	5.Increment index +=1
=end

def encrypt(string)
	index = 0
		while index < string.length
		  if string[index] == " "
		  elsif string[index] == "z" #conditional logic for edge case
		    string[index] = "a"
			else
			  string[index] = string[index].next!
		  end
		  index += 1
		end
	#puts string
	return string
end

=begin
	1. Receive a string
	2. Get the string length. 
	3. Set an integer variable index = 0. And while index < string length,
	backward the string letter that the index is currently at by 1 alphabet letter.
	4.Change the string letter at the index permanently to new alphabet letter. 
	5.Increment index +=1
=end

def decrypt(string)
  alpha="abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string.length
		  if string[index] == " "
			else
			  n = 0
			  while string[index] != alpha[n] #while string char is not equal to alphabet char, continue to index the alphabet until they're equal in char
  			  n += 1
  			end
  			string[index] = alpha[n-1] #then save string index to corresponding alphabet char as n minus 1
		  end
		  index += 1
	end
	#puts string
	return string
end

#p decrypt(encrypt("swordfish"))
# The nested method call works because return function on both methods is saving our specified result. So when another method calls a method, they're using that return as their input.

=begin
  1. Ask the agent to decrypt or encrypt a password.
  4. Ask to give a password they want to use.
  5. Recieve input for the password.
  6. Call the requested method for the password.
  7. Print the result to the screen.
=end

puts "Would you like to decrypt or encrypt a password? (type decrypt or encrypt)"
type=gets.chomp
puts "What is the password you want to use?"
password=gets.chomp
  
if type == "decrypt"
  puts "Your decrypted password is:"
  puts decrypt(password)
else
  puts "Your encrypted password is:"
  puts encrypt(password)
end

  

