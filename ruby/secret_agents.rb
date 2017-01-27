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
			else
			  string[index] = string[index].next!
		  end
		  index += 1
		end
	puts string
end

=begin
	1. Receive a string
	2. Get the string length. 
	3. Set an interger variable index = 0. And while index < string length,
	backward the string letter that the index is currently at by 1 alphabet letter.
	4.Change the string letter at the index permanently to new alphabet letter.
	5.Increment index +=1
=end

def decrypt(string)
  string1="abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < string.length
  
end

