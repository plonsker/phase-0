# Factorial

# I worked on this challenge [by myself, with Mason].


# Your Solution Below
#def factorial(number)
#  while number != 1
#    number * (number - 1)
#    return number
#    number -= 1
#    break
#  end
#end

#def factorial(number)
#  while number >= 1
#    number -= 1
#    minus = number - 1
#    number * minus
#    return number
#  end
#end

# factorial(0)

def factorial(number)
  result = 1
  while number > 0
    result = result * number
    number -= 1
  end

  return result
end






# Pseudocode:

# Define first method that takes a positive integer and calculates its factorial.

# Start "while" loop. Eg, "while the integer > 1, multiply the integer by itself minus 1"

# Intention is to have the next lowest integer multiplied by the last integer.

# while n > 1
#   return n * (n - 1)