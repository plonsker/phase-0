# Numbers to Commas Solo Challenge

# I spent approx. 2.5 hours on this challenge. The majority of the time was spent reading
#about all kinds of methods.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input will be a positive integer.
# What is the output? (i.e. What should the code return?)
# The output will be a comma separated string. That is, if the integer has more than 
# three digits long, a comma will be placed after every third digit from rightto left.
# For example, 1776 would be returned as 1,776.
# What are the steps needed to solve the problem?
# First, I will need to convert the inputted integer to a string. Then I will need to break each
# integer into an array and then insert a comma in the appropriate location. 
# Another take to this is to convert the integer into a string and then into an array. I'll try both. 


# 1. Initial Solution
#def separate_commas(input)
#	separate_commas.to_a
#end

#Using split to change integer into string with spaces.
#def separate_commas(input)
#	input.to_s.split('')
#end

#Now that I am able to split, I just have to insert a comma in the right place.
#Currently researching on how to insert data (a comma in this case), then return the
#value as a string. I'll just try it for a four digit number for now
#def separate_commas(input)
#	input.to_s.split(' ').insert(3, ',')
#end

#Oops. That did not work at all. I'll fool around with insert a bit more. Looked at 'push'
#but it doesn't offer me an exact point to enter data.  
#def separate_commas(input)
#	input.to_s.split('').insert(1, ',')
#end

#On the right path, but I want to make sure I give it a range to insert a comma in the right
#places no matter the length of the number and join them together

#def separate_comma(input)
#	if input < 1000
#		return input.to_s
#	elsif input < 9999
#		return input.to_s.split('').insert(1, ',').join
#	elsif input < 99999
#		return input.to_s.split('').insert(2, ',').join
#	elsif input < 999999
#		return input.to_s.split('').insert(3, ',').join
#	elsif input < 9999999
#		return input.to_s.split('').insert(1 , ',' && 4, ',').join
#	elsif input < 9999999
#		return input.to_s.split('').insert(2 , ',' && 6, ',').join
#	else nil
#	end
#end

#Last one worked okay. Only two failures. Time to correct. Also resetting the numbers to
#Reflect actual proper ranges 

#def separate_comma(input)
#	if input < 1000
#		return input.to_s
#	elsif input < 10000
#		return input.to_s.split('').insert(1, ',').join
#	elsif input < 100000
#		return input.to_s.split('').insert(2, ',').join
#	elsif input < 1000000
#		return input.to_s.split('').insert(3, ',').join
#	elsif input < 10000000
#		return input.to_s.split('').insert(1, ',' && 5, ',').join
#	elsif input < 100000000
#		return input.to_s.split('').insert(2, ',' && 6, ',').join
#	else 
#		puts "Stop breaking my workaround!"
#	end
#end

#Still getting two failures. I keep seeing this syntax: "/^\d{1,3}$/". No idea what it means.
#Looked it up and it appears as if the syntax is referring to some kind of pattern, which is great!
#I'd rather make a pattern.

#After doing some research, it looks like I either have to rework my last two elsif statements or resort
#to this new thing called regular expression which I haven't seen before, and which I was told explicitly
#not to use.

#def separate_comma(input)
#	if input < 1000
#		return input.to_s
#	elsif input < 10000
#		return input.to_s.split('').insert(1, ',').join
#	elsif input < 100000
#		return input.to_s.split('').insert(2, ',').join
#	elsif input < 1000000
#		return input.to_s.split('').insert(3, ',').join
#	elsif input < 10000000
#		return input.to_s.split('').insert(1, ',' && 5, ',').join
#	elsif input < 100000000
#		return input.to_s.split('').insert(2, ',' && 6, ',').join
#	else 
#		puts "Stop breaking my workaround!"
#	end
#end

#I looked at the code again and it looks like evrything after && is being inserted into the inputted number!



 
# 2. Refactored Solution

#As specfied, I have stuck to control flow for this challenge. I may revisit this challenege
#later if I figure out something more elaborate.

def separate_comma(input)
	if input < 1000
		return input.to_s
	elsif input < 10000
		return input.to_s.split('').insert(1, ',').join
	elsif input < 100000
		return input.to_s.split('').insert(2, ',').join
	elsif input < 1000000
		return input.to_s.split('').insert(3, ',').join
	elsif input < 10000000
		return input.to_s.split('').insert(1, ',').insert(5, ',').join
	elsif input < 100000000
		return input.to_s.split('').insert(2, ',').insert(6, ',').join
	else 
		puts "Please stop breaking my code and insert an integer."
	end
end



# 3. Reflection

=begin
-What was your process for breaking the problem down? What different approaches did you consider?
My process was to follow the basic pseudocode and research guidelines. I wrote out exactly how I thought the code should work,
then gave it a shot with some basic knowledge that I had and continued to research very specific points ('how to insert new elements
in a specific spot in an array', how to join back together, etc.).

-Was your pseudocode effective in helping you build a successful initial solution?
Absolutely. I feel like my pseudocode outlined exactly what I needed. I felt way more confident after explicitly stating what it was that
I needed. 

-What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
I used 'insert' and 'join'. I learned about join before in previous codecademy exercises and other readings, but had not made much use of it before.
The insert method allowed me to insert commas into an array as elements, then join allowed to turn the final array back into a string. 

How did you initially iterate through the data structure?
At first I attempted to make everything into an array with '.to_a' to break it up, but then realized that converting it to a string then 
using the split method to pull the integers a part would allow me to insert the data I needed (comma).

Do you feel your refactored solution is more readable than your initial solution? Why?
My current solution is readable in terms of it following the basic logic on control flow, but I think a lot more can be done. I would like to learn and implement regular expression at some point.
I also plan on revisiting this challenge later on to see if I can alter it any further. 
=end