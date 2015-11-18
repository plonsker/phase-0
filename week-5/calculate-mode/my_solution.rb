# This pad is reserved for a student in the Chorus Frogs cohort. 

# Pseudocode
# Iterate a method called mode that takes the most repeated value in an array
# Call empty hash
# Each value in an array will be added to an hash and the key will be 1. And if it's already there it's +1.
  
# Call a counting value
# Call a var to hold value itself
# Use an each loop to do and if statement, if the value is larger than var is the value

def mode(array)
  mode_hash = Hash.new
  
  counter = 0
  while counter < array.length do 
    mode_hash[array[counter]] = 0
    counter += 1
  end
  
  counter = 0
  while counter < array.length do 
      mode_hash[array[counter]] += 1
    counter += 1
  end

  mode_hash = mode_hash.sort_by{ |k, v| v }.to_h
  mode_hash = mode_hash.to_a.reverse.to_h
  
  key = []
  occurences = 0
  mode_hash.each do | x , y |
    if occurences <= y
      occurences = y
      key.push(x)
    end
  end
  return key.sort
end


=begin
print mode([1, 2, 3, 4, 5, 5, 7])
print mode([4, 4, 5, 5, 6, 6, 6, 7, 5])
print mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"])
=end

=begin
	
Which data structure did you and your pair decide to implement and why?
-We agreed on taking the array as an argument, then turning it into a hash in order to count the frequency
of keys, and then returning an array. After creating our hash towards the beginning of the method, we were able to keep track of frequencies
with a while loop and a counter. The second part of our method involved having to sort the hash in order before
returning an array, which got a bit tricky. However we found some tricks to order to sort a hash then return an array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
I feel much more confident speaking about possible code solutions and talking through pseudocode. I am starting to shift away from my
bad habit of diving right into the coding portion. Pseudocoding has so far saved me a lot of time. 


What issues/successes did you run into when translating your pseudocode to code?
Personally I had a general idea of what we needed in the pseudocode, however I drew a blank for the first half of the method. I could not figure out how to
work that while loop in. My pair and I returned to our pseudocode, but we found a lot of success just by reworking the original code and
talking out loud. We took more of a waterfall approach to each reiteration of the code. 

One major issue we had was attempting to refactor the part of the method that initially counted the frequency of a key. We wanted to combine the the two parts
of the method together, but settled on using the same loop just slightly altered for the time being. Another issue we had was trying to get our hash sorted. 
We finally discovered a brand new hash syntax and used the reverse method to sort the hash and then push it into an array and then return the result.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used several methods to iterate through the array. 'length' was used to determine the length of the array that was taken as argument. We used to_a and to_h
to change the inputs back and forth from arrays to hashes so that we could use other methods on the results, such as 'reverse' and 'sort' to put our lists in order.
We also used 'each' to apply the changing of each array element into a hash key and value. We also used 'push' to make sure everything was pushed into an array for
our final output. 
=end