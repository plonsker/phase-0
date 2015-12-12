# I worked on this challenge by myself.
# This challenge took me 45 minutes.

# Due to personal matters this week I am able to complete only one exercise at this time. 


# Pseudocode
# This program will take an array of integers and replace multiple of 3 with
# the word 'fizz', multiples of 5 with the word 'buzz', and numbers that are both
# multiples of 3 and 5 with 'fizzbuzz'. 
# First, we will have a method called super_fizzbuzz which takes an array as an argument.
# Then, we will have some control flow that first  determines whether any of the elements 
# in the array is a multiple of both 3 and 5. If so, that number within the array will be changed
# to 'fizzbuzz'. We will continue to move through the control flow setup and determine whether any
# element is either a multiple of 3 or 5 and replace any with 'fizz' or 'buzz' respectively. If an
# integer does not meet any of that criteria, it will be left alone in the array.


# Initial Solution

#First Attempt

# def super_fizzbuzz(array)
# 	array.each do |i|
# 		if i % 3 == 0
# 			array[i].map! {|num| num == i ? 'Fizz' : num}
# 		elsif i % 5 == 0
# 			array[i].map! {|num| num == i ? 'Buzz' : num}
# 		else
# 			print array
# 		end
		
# 	end
# end	

#Second Attempt

# def super_fizzbuzz(array)
# 	array.each do |i|
# 	if i % 3 == 0 && i % 5 == 0
# 		 array.map! {|num| num == i ? 'FizzBuzz' : num}.flatten!
#     elsif i % 3 == 0
#         array.map! {|num| num == i ? 'Fizz' : num}.flatten!
#     elsif i % 5 == 0
#         array.map! {|num| num == i ? 'Buzz' : num}.flatten!
#     else
#     	print array
#     end
# end
# end


# Refactored Solution

def super_fizzbuzz(array)
	array.each do |num|
	if num % 3 == 0 && num % 5 == 0
		 array.map! {|i| i == num ? 'FizzBuzz' : i}
    elsif num % 3 == 0
        array.map! {|i| i == num ? 'Fizz' : i}
    elsif num % 5 == 0
        array.map! {|i| i == num ? 'Buzz' : i}
    else
    	print array
    end
end
end







# Reflection

# What concepts did you review or learn in this challenge?
# This exercise was a good review of the basic concepts of control flow and the use of the #map enumerable.
# I picked this challenge in particular because it was stated that this is a common challenge theme
# during job interviews. 

# What is still confusing to you about Ruby?
# I guess I am still confused at times of Ruby's practical use. I think I need to see it in action or approach
# it from a business perspective. The times I learned the most about Ruby were in exercises like checking a credit
# card number or 


# What are you going to study to get more prepared for Phase 1?
# I plan on reading through the ruby docs straight through instead of hopping around, then writing by hand
# what methods are best for what. I know it may sound tedious, but writing things out by hand is great for 
# my memory. 