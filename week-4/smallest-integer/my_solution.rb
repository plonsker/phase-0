# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#Here I have a previous solution based on alphabtizing items.
#I thought the same trick would apply. No luck.
#def smallest_integer(list_of_nums)
#   list_of_nums.sort! {|firstNum,secondNum| firstnum <=> secondnum}
#  	prints list_of_nums[0]
#end

#Perhaps I can convert the list of numbers to an array?
#def smallest_integer(list_of_nums)
# list_of_nums.to_a.sort! {|firstNum,secondNum| firstnum <=> secondnum}
#  	print list_of_nums[0]
#end

# Well that solution resulted in only one failure!
# Perhaps its upset that I converted everything to array and returned
# A string? Maybe I need to convert them back to integers
#def smallest_integer(list_of_nums)
#	list_of_nums.to_a.sort! {|firstNum,secondNum| firstnum.to_i <=> secondnum.to_i}
#  	prints list_of_nums[0]
#end

#Darn. I should have just read the error message. Undefined local variable.
#Let's fix the syntax.
#def smallest_integer(list_of_nums)
#	list_of_nums.to_a.sort! {|firstNum,secondNum| firstNum.to_i <=> secondNum.to_i}
#  	prints list_of_nums[0]
#end


#Another syntax error! 'Prints' is not a command! Also, we should be using return
#here anyway, as it returns to us a value.
def smallest_integer(list_of_nums)
	# Your code goes here!
	list_of_nums.to_a.sort! {|firstNum,secondNum| firstNum.to_i <=> secondNum.to_i}
  	return list_of_nums[0]
end

#Wow! All tests passed! 