
=begin
	
Pseudocode:

Our goal is to create a method that will take a list of people and break it into smaller lists of 4 to 5
people each. We will have a method that takes a string of names and turns them into a array, then breaks that array
into smaller arrays and returning each. 
	

I tested this intial concept, and it looks like I might be better off having a hash returned to me as this will keep full names.

def acct_groups(list)
	new_list = list.split('')
	end
list
end

Back to the drawing board: The method will take an argument, in this case the argument being a list of names. The method will then convert
	the list to a hash, with each name turned into a key in a hash with a default value of zero. Then we will need to divide the hash into
	multiple hashes of 4 to 5 elements each.  
=end

=begin

puts "List of students please: "
list = gets.chomp

def acct_groups(list)
  new_list = list.split(' ')
  frogs = Hash.new(0)
  new_list.each do |item|
    frogs[item] = 0
  end
  frogs
end




def individuals(frogs)

  indi_frogs = frogs.keys.shuffle
  return indi_frogs
  end

def groups(indi_frogs)
  if indi_frogs.length % 5 == 0
    frog_groups = indi_frogs.each_slice(5).to_a
    return frog_groups
  elsif indi_frogs.length % 4 == 0
    frog_groups = indi_frogs.each_slice(4).to_a
    return frog_groups
 elsif indi_frogs.length % 3 == 0
   frog_groups = indi_frogs.each_slice(3).to_a
    return frog_groups
  else 
    return "Seems like someone is left all alone!"
  end
end

puts "The class has been divided into the following groups:"
frogs = acct_groups(list)

indi_frogs = individuals(frogs)


p groups(indi_frogs)

=end

=begin
	
To refractor, I am going to move multiple lines in the group method to one
	

=end


def string_to_hash(student_list)
  new_list = student_list.split(' ')
  student_list_hash = Hash.new(0)
  new_list.each do |item|
    student_list_hash[item] = 0
  end
  student_list_hash
end

def hash_to_array(frogs)
  student_list_array = frogs.keys.shuffle
  return student_list_array
end

def groups(student_list_array)
  if student_list_array.length % 5 == 0
    student_groups = student_list_array.each_slice(5).to_a
    return student_groups
  elsif student_list_array.length % 4 || 3 == 0
    student_groups = student_list_array.each_slice(4 || 3).to_a
    return student_groups
  else
  	return "Error encountered!"
  end
end

puts "List of students please: "
student_list = gets.chomp

puts "The class has been divided into the following groups:"
student_list_hash = string_to_hash(student_list)
student_list_array = hash_to_array(student_list_hash)
student_groups = groups(student_list_array)

p groups(student_list_array)

=begin

I attempted to refactor the groups section of the code. Unforunately the logic allowed the creation of groups of one or two 
people depending on the input.

=end

=begin

What was the most interesting and most difficult part of this challenge?
	The most interesting part was getting rid of all the values I had created when turning my list into a hash and then into an array again. I wanted to first convert
	everything into an array, but first converting the list into a hash allowed me to keep full names intact. From then on I was able to create an array just with the keys
	of the hash. In the end it was a pretty roundabout way of doing it, however I learned quite a bit about the interaction of hashes and arrays.

	The hardest part though was making sure no one was left in a group alone or with just one other person. I tried many different methods to push one element of the overall
	array into another, but none of the code I ran would push the elements together. It was maddening. The logic I had created to split the groups allowed for these miniature groups,
	so I restructured it so that a remaining group of just two people would be a last resort. I would have dedicated more time to other tricks such as using the flatten method to push
	to indexed arrays within an array together, but came up empty handed in my search. This is a concept I'll have to reach out to my cohort members about in the future. 

Do you feel you are improving in your ability to write pseudocode and break the problem down?
	I believe I am getting better at visualizing the big picture through pseudocode. Unforeseen issues and details keep presenting themselves though. I believe I'll have to get even more
	precise when laying out my logic.

Was your approach for automating this task a good solution? What could have made it even better?
	It could have been more straightforward. Perhaps working hashes into the mix was a bit over the top. I think eliminating the hash factor and collapsing the division component of the groups
	method I defined would make it much more manageable.

What data structure did you decide to store the accountability groups in and why?
	I stored the structure into an array of arrays, as this created the most basic and accesible list of groups.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	I learned that changing my variable and method names to something slightly more legible let me rethink the inherent logic of the system I had created. There were also a few methods I had
	learned that all had to do with hashes and arrays. I learned to randomly mix results with the shuffle method, pull out only the keys from a hash, and slice an array into smaller arrays while
	specifying the length of each	

=end



