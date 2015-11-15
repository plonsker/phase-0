# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

#First attempt failed because I'm trying to print the integers
#instead of the number of them. 
#def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here!
#  list_of_integers.to_a.each {|i| print i.to_i}
#  if i >= lower_bound && i <= upper_bound
#  	return i
#  else
#  	return nil
# end
#end


#def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here
#  list_of_integers.to_a.each {|i| if i >= lower_bound && i <=upper_bound}
#  	return list_of_integers.length
#  end


#Needs and end in there. 
#def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here
#  list_of_integers.to_a
#  list_of_integers.each! {|i| if i >= lower_bound && i <=upper_bound return i}
#  	return list_of_integers.length
#  end
#end

#Still getting catastrophic failure. Perhaps I need to hit up the ruby docs again. 

#Since this is a range, I'm going to make a range between lower_bound and upper_bound as if
#they were a range. Doing some research allowed me to pull the include method
#we had used for strings in codecademy. 
#def count_between(list_of_integers, lower_bound, upper_bound)
#  # Your code goes here
#  	list_of_integers.each {|i| if (lower_bound..upper_bound).include? return i}
#  end
#end

#Still getting an syntax error. Doing so more research showed that I should
#probably take out that last return. Instead I should be asking if it has any instance of i

#def count_between(list_of_integers, lower_bound, upper_bound)
#  # Your code goes here
#  	list_of_integers.each {|i| (lower_bound..upper_bound).include?(i)}
#  end
#end

#Still getting an error. Perhaps get rid of the if, and maybe that last end 

#def count_between(list_of_integers, lower_bound, upper_bound)
  # Your code goes here
#  	list_of_integers.each {|i| (lower_bound..upper_bound).include?(i)}
#end

#Alrighty then. Failed all tests. Looks like I am printing each integer?

#Some more research indicates I should use the 'count' method instead of 'each'.
#Would make sense since I am printing every single integer and this exercise asks me to count

#def count_between(list_of_integers, lower_bound, upper_bound)
#   Your code goes here
# 	 if list_of_integers.each !(lower_bound..upper_bound).include?(1)
#  	 	return list_of_integers.delete(i).length
#  	 end
#end

#Frustration is settling in. You can probably tell i went back to the each iterator.

#Dumbed it down to the following after a ton of syntax errors! Only 5 of 6 tests failed!
#Turns out I failed those tests because I put 'put' instead of 'puts'. Perhaps return will work?

#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#	 list_of_integers.each {|i| puts i}
# 	 return list_of_integers.length
#end

#That didn't work. All I actually have left to do is specify the range.

#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#	 list_of_integers.to_a.each {|i| puts i.to_i}
#	 if lower_bound..upperbound.include?(i)
#	 	puts i
 #	 return list_of_integers.length
 #	end
#end


#That failed miserably. I looke

#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#	 list_of_integers.to_a {|i| puts i.to_i}
# 	 return list_of_integers.length
#end

#I just realized this was in the error messages: returns 0 if upper_bound < lower_bound
#Perhaps I should incorporate that.



#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#   return 0 if upper_bound < lower_bound
#	list_of_integers.to_a {|i| puts i.to_i}
# 	return list_of_integers.length
#end

#Duh! Only two tests left to pass. Just have to figure out how to specify the range. 

#I did some more research here and figured out that 'include?' was a backwards way
#of looking at the problem. 'between' could possibly work.
#Also should specify that those bounds are integers. 

#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#   	return 0 if upper_bound < lower_bound
#	list_of_integers.to_a {|i| puts i.to_i}
#	if i.between?(lower_bound.to_i..upper_bound.to_i)
# 	return list_of_integers.length
# end
#end

#I think I am using the range incorrectly.

#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#   	return 0 if upper_bound < lower_bound
#	list_of_integers.to_a {|i| puts i.to_i}
#	if i.between?(lower_bound.to_i,upper_bound.to_i)
# 	return list_of_integers.length
# end
#end

#Multiple failures still. 


#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#   	return 0 if upper_bound < lower_bound
#	list_of_integers.to_a {|i| puts i.to_i}
#end
#	i.to_i.between?(lower_bound.to_i,upper_bound.to_i)
# 	return list_of_integers.length
# end
#end

#Taking a step back. With this code I am so close. But how do I
#specify the range??

#After a search of more iterators I found 'select' and 'count'.

#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#   	return 0 if upper_bound < lower_bound
#	list_of_integers.to_a.select {|i| i >= lower_bound && i <=upper_bound}.count
# 	return list_of_integers.length
#end

#So I read about 'count' and it turns out that this iterator legit counts 
#what's left in the array and gives a total. So my return value and length
#business can be taken out


#def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
#   	return 0 if upper_bound < lower_bound
#	list_of_integers.to_a.select {|i| i >= lower_bound && i <=upper_bound}.count
 	#return list_of_integers.length
#end

#Tests passed! But I want to make this shorter. 

def count_between(list_of_integers, lower_bound, upper_bound)
   #Your code goes here
   	return 0 if upper_bound < lower_bound
	list_of_integers.to_a.select {|i| i.between?(lower_bound,upper_bound)}.count
end

#It worked! My Frankenstein 