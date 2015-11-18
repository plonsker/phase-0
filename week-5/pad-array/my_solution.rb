# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
#  - an array, an integer, and optionally something to pad the array with
# What is the output? (i.e. What should the code return?)'
#  - the new padded array (for the non-destructive one)
#  - the same array, but padded (for the destructive one)
# What are the steps needed to solve the problem?
=begin
1) define a method called pad or pad! that takes three arguments
2) if the length of the array >= mininum length, return the array
3) if not...
3.5) if the method is non-destructive, create a new array
4) until the length of the array = minimum length
5) push whatever we're padding to the end of the array (or the new array in the non-destructive case)

=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size 
    return array
  else 
    until array.length == min_size
      array.push value
    end
    return array
  end
end




def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
  if (new_array.length >= min_size) || (min_size == 0)
    return new_array
  else 
    until new_array.length == min_size
      new_array.push value
    end
    return new_array
  end
end

my_array = [1, 3, 5]
pad(my_array, 6, "beets")

# 3. Refactored Solution


# There are in fact built-in Ruby methods called pad and pad! that do exactly this


# 4. Reflection

=begin
Were you successful in breaking the problem down into small steps?
  This peer exercise was probably the most successful I have had so far as far as psuedocode goes. Everything seemed to come naturally between my
  pair and I. 

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  Translating from pseudocode to actual code was fairly easy. The main difficulty we had was making sure our non-destructive method was, in fact, being non-destructive.
  We merely had to make sure that a new array was being specified.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
When you refactored, did you find any existing methods in Ruby to clean up your code?
  The only error we first received with out initial solution was that our non-destructive method was being destructive. We fixed it by specifying a new array in the method, as stated earlier.
  When we went to refactor, we discovered an entirely new method called 'pad' that would have been the process much shorter. 
How readable is your solution? Did you and your pair choose descriptive variable names?
  I believe our solution is straightforward enough for the average beginner to understand the flow. Our variables were descriptive in as much as their names were taken directly
  from the context of the exercise. However, adding the 'pad' method will require us to rename our intial method. 
What is the difference between destructive and non-destructive methods in your own words?
  Destructive methods permanently alter what we input into a method into a brand new version in the output. Non-destructive methods return new versions of our intial inputs that are of their own
  rather than altering the original. Destructive methods are notated with an exclamation mark. 

=end