# I worked on this challenge with Jenna Espezua.

=begin # We want to input three sides of a triangle and have our output
be true and describe the type of triangle or false.

The following code is what we entered and tried to get to work for two hours.
Eventually we realized that the code we were trying to make should only have
been answering one of the tests. Overall an exhausting but meaningful experience.

def valid_triangle?(a, b, c)
  # Your code goes here!
  if a==0 || b==0 || c==0
    return false
  elsif 0.01..100.0 && a==b && a==c && c==b
    return true
  elsif ((a <= (b+c)) || (b <= (a+c)) || (c <= (a+b)) )
    return true
## elsif a+b > c || a+c > b || b+c > a
##   return true
  end
end
=end
# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
  if (a+b> c) && (b+c>a) && (c+a > b)
    return true
  else
    return false
  end
end

