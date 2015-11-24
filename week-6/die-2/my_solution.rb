 #Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

#The goal is to create a class with several methods that emulate the rolling of a single die. The first part of the code
#will determine how many sides are on the die and the second part will generate one of the side's names. The side names
#will be the initial input as an array of strings.

# Input: An array of strings.
# Output: The number of those strings and one of the strings. 
# Steps: First the code will take in the array and determine whether it has more than one element. 
# If so, the array's length will be returned as an integer. Afterwards a random element of the original
# array will be printed. We can do this either by randomly picking an elements of by having the original array 
# be turned into an array containing arrays, each for one element,  and then return one of those arrays as 
# a side.


# Initial Solution

#Initial solution splits the array into multiple arrays then returned one. 

class Die
  def initialize(sides)
    @sides = sides
    if @sides.length < 1
    	raise ArgumentError.new("We're going to need a longer list than that.")
    end
  end


  def sides
    # code goes here
    	return @sides.length
  end

  def roll
    # code goes here
    @sides.each_slice(1)
    return @sides.sample
  end
end




# Refactored Solution

#Splitting the array into multiple arrrays with the slice method was redundant. I can just as easily use the sample method
#to pull a random, non-arrayed element.

class Die
  def initialize(sides)
    @sides = sides
    if @sides.length < 1
    	raise ArgumentError.new("We're going to need a longer list than that.")
    end
  end


  def sides
    # code goes here
    	return @sides.length
  end

  def roll
    # code goes here
    return @sides.sample
  end
end




# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? 
Did you need to change much logic to get this to work?

The logic itself did not need to be altered too drastically. Mostly I just had to add a couple of array-specific
methods to generate the outputs I needed. These methods were 'length' and 'sample', two I had come across in
previous exercises. 'Length' was used to determine the number of sides on our theoretical die and sample was used
to print a random element. 

What does this exercise teach you about making code that is easily changeable or modifiable?

I learned I can keep the basic logic of a system while modifying it for specifc inputs or conditions. 

What new methods did you learn when working on this challenge, if any?

The latest one I found was 'sample'. This was found last week while I was looking up ways to generate randomness.
I settled on 'random' to produce a random integer. 'sample' was array specific and I got to make use of this time. 

What concepts about classes were you able to solidify in this challenge?
The general concept of instance mvariables was solidified for me. Also pretty cool to apply array methods to instance variables.
Solidifies the concept of just how natural Ruby can feel.


=end