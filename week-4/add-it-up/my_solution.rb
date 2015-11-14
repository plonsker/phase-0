# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Mason via GPS and email.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# We will have a method called 'total' which will take an array of numbers
# and return the total.

# Input: An array of numbers.
# Output: The sum of that array of numbers.
# Steps to solve the problem. 
# Create an array of numbers
# Split the input of numbers in the array
# Add each othe numbers to each other
# Return the sum of the numbers

# 1. total initial solution

#Here we attempted to modify what we recalled about multiplying
#integers in array and attempted to split each of them up (hence the code at ##).
#However we recircled and realized that this would not work and that we should apply .each
#to the value
#def total(array)
##  values = input.split
#  input.each {|i| * 2}
#    i2 = i * 2
#    puts "#{i2}"
#  end
#end





# 3. total refactored solution
#Here we have the basic structure. 
#def total(array)
 #    sum = 0
 #    array.each {|i| i + i }
 #   return sum
#end

#Zero kept coming back as the only result. It became clear that all that was defined was a sum that was zero and all
#that was comming back was the number zero. Just adding array integers to each other wouldn't do anything.
#We had to return a modified sum, and the way to do that was to add the array to line 45 above. 
#Setting the sum to zero was in my pervious notes. I am not entirely sure why it works out that way. I'll have to read
#up on it again

 def total(array)
     sum = 0
     array.each {|i| sum = sum + i }
     return sum
 end

# 4. sentence_maker pseudocode
# Take each of the individual objects in an array join them together to make once sentence.
# Input: Array of words.
# Output: A sentence of those words.
# Steps to solve the problem.
# Define a method called sentence_maker and give it an argument of array for this challenge.
# Return a string that is simply each of the items in an array and join them together.
# Look at the spec file. Looks as if a period will be needed at the end of the sentence. 

# 5. sentence_maker initial solution

#def sentence_maker(array)
#	return array.join(" ")+"."
#end


# 6. sentence_maker refactored solution

def sentence_maker(array)
	array[0].capitalize!
	return array.join(" ")+"."
end

