# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

#In this challenge you'll want to implement a basic Die class which can be initialized
#with some number of sides. You can then roll the die, which will return a random number. It should work like this:

#The goal is to create a class with several methods that emulate the rolling of a single die. The first part of the code
#will determine how many sides are on the die and the second part will generate a random digit as a result of rolling the die.

# Input: an integer larger than 1
# Output: how many sides of the die there are and a possible face-up result of rolling the die. 
# Steps: First the code will take in an integer and return it as a number of sides on the dice. Afterwards it will calculate a random
# roll based on the number of sides. 




=begin

Here I am getting familiar with the situation with a basic method:

 def initialize(sides)
    # code goes here
    if sides.to_i > 1
    	return sides
    else
    	return "Error. No such die."
  end

Now let's make it a class with instance methods!

=end


=begin
class Die
  def initialize(sides)
    @sides = sides.to_i
  end

  def sides
    # code goes here
    if @sides > 1
    	return sides
    else
    	return "Please enter in a die size larger than 1."
  end

  def roll
    # code goes here
    return rand(1 .. sides.to_i)
  end
end
end
=end

# The previous solution raised 4 errors out of six examples. Error message stated that 'roll' was an undefined method. Let's
# take care of that. Also, we need to raise an argument error


# Initial Solution

#This solution passed all tests and worked when I called a new instance with the roll method. I'd like to collapse a couple of lines though. 


class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("We're going to need a bigger number!")
    end
  end


  def sides
    # code goes here
    	return @sides
  end

  def roll
    # code goes here
    unique_rolls = rand(1 .. @sides)
    return unique_rolls
  end
end









# Refactored Solution

#Only thing I could think to get rid of was the new variable I had created. 
class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("We're going to need a bigger number!")
    end
  end


  def sides
    # code goes here
    	return @sides
  end

  def roll
    # code goes here
    rand(1 .. @sides)
  end
end

#example input
die = Die.new(6)
puts die.sides
puts die.roll 





# 4. Reflection

=begin
	
What is an ArgumentError and why would you use one?
	An argument error is an error that is usually raised when an incorrect number of arguments is supplied to a method. 
	We can intentionally include argument errors to be raised in a program in order to clearly state to a user what the issue is. 
	We can even have the ArgumentError state exactly what steps need to be taken to rectify the situation.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

	The 'rand' method for random numbers was a newer one for me that I tried out recently on another exercise. 
	What I hadn't done before was define the random range for an instance variable. I felt super cool doing that.

What is a Ruby class?
	A class a collection of methods and other objects in ruby that share similar attributes and information.

Why would you use a Ruby class?
	We would use a ruby class to organize all the methods we would like to use together or that are dependent on one another, without them
	necessarily begin used anywhere else except within that context. Without classes, we would usually be tricky and pass methods as arguments
	to other methods. Within a class, we can pass instance variables to other methods 

What is the difference between a local variable and an instance variable ?Where can an instance variable be used?

	A class variable belongs to an entire class while an instance variable belongs to only an instance of that method. Class variables 
	are distinguished with two @ symbols while an instance has only one. Class variables can be defined once within a class,
	while instance variables need to be defined within methods of the class.

=end

