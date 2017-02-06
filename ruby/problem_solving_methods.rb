#create a method that takes an array of integers and an integer
#returns the index of the integer

def search_array(arr, num)
	index = 0
	arr.each do |value|
		if value == num
			return index
		end
	index +=1
	end
	return nil
end

arr = [42, 89, 23, 1]
p search_array(arr, 89)
p search_array(arr, 24)

#calculate fibonacci number

def fib(num)
	fib_num = [0, 1]
	until fib_num.length == num
		fib_num << (fib_num[-1] + fib_num[-2])
	end
	return fib_num
end

p fib(6)
p fib (100)