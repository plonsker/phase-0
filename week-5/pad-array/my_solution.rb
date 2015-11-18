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