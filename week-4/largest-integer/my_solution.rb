# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#According to Pine, a lot of developers are lazy and will create simple solutions
#for themselves to stop repeating things. In this exercise, I'll just do what I did
#earlier except change the targeted integer. This time around it's the largest. 
def largest_integer(list_of_nums)
	# Your code goes here!
	list_of_nums.to_a.sort! {|firstNum,secondNum| firstNum.to_i <=> secondNum.to_i}
  	return list_of_nums[-1]
end

#If I knew how many numbers were in the array, I could just designate the very last
#number to be picked. For example, if there were 3 numbers I'd just have list_of_nums[3]
#on line 21 to get the third and last integer. Since I don't know how many numbers there are,
#I have kept it to [-1], as this will grab whatever integer is last no matter what. 

#I could also list all the integers in descending order then grab the first integer.

#def largest_integer(list_of_nums)
	# Your code goes here!
#	list_of_nums.to_a.sort! {|firstNum,secondNum| secondNum.to_i <=> firstNum.to_i}
#  	return list_of_nums[0]
#end

#Both solutions work. I'll stick with the active one since it's a bit more simple.
