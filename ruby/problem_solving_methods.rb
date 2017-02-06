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

=begin
Pseudocode a bubble sorting method. 
-Define a method that takes an array as a variable
-Save the length of the array in a new variable
-Create a loop that iterates through the array 1 times less than
the array length
-Give a conditional statement swapped to be false at the beginning
of the loop
-Compare an array item with the next item in the array,
and if the array item is greater than the next item, swap their position
-Break the loop when swapped = false, and the array is finished sorting

=end

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |int|
      if array[int] > array[int+1]
        array[int], array[int+1] = array[int+1], array[int]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

numbers = [13, 2, 45, 23, 1, 4]
p bubble_sort(numbers)



