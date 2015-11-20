<<<<<<< HEAD

=======
<<<<<<< HEAD
>>>>>>> master
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Divide input string at spaces
# Set new strings to hash keys
  # set default quantity to 1
  # print the list to the console
# output: New hash with groceries: quantities as key: value pairs

def groceries(input)
  new_input = input.split(' ')
  list = Hash.new(1)
  new_input.each do |item|
    list[item] = 1
  end
  list
end


#p input
# output == {"carrots" => 1, "apples" => 1, "cereal" => 1, "pizza" => 1}

# p output["tangerines"] 


# Method to add an item to a list
# input: item name and optional quantity
# steps: check to see if key is already in hash 
#if not, add item name as key and quantity as value to existing hash with default quant as 1
# 
# output: Updated hash with groceries
#groc_proc = Proc.new do |items|
#  groceries(items)
#end
#p groc_proc.call 'Shallots!'

def add_item(list, item, qty)
#  groc_proc.call 'carrots shallots ehrmahgerd'
#  p thing
  if list.has_key?(item)
    puts "Item already on list"
  else
    qty.to_i
    list[item] = qty
  end
  list
end


# Method to remove an item from the list
# input: item to be removed
# steps: find the item
# remove the item (k/v)
# output: updated hash

def remove_item(list, item)
  if list.has_key?(item) == false
    puts "Nothing to remove"
  else
    list.delete(item)
  end
  list
end

# Method to update the quantity of an item
# input: the item we want to update
# steps:find that item in the hash
#update value
# output: updated hash

def change_qty(list, item, qty)
  if list.has_key?(item) == false
    puts "Item not found"
  else
    qty.to_i
    list[item] = qty
  end
  list
end

# Method to print a list and make it look pretty
# input: the hash
# steps: convert values to strings
# print out hash as a string
# output: stringified hash

def stringify(list)  
  list.each do |item, qty|
    puts item + " ==> " + qty.to_s
  end
end

puts "Grocery list: "
input = gets.chomp
puts "You made a list with this:"
list = groceries(input)
p list
p add_item(list, 'squash', 17)
p remove_item(list, 'carrots')
p change_qty(list, "apples", 72)
puts stringify(list)

<<<<<<< HEAD
=begin
  
What did you learn about pseudocode from working on this challenge?
  Pseudocode might not always go as planned. While we established the basic structure of what our code would look like, we did not
  address the issue in the GPS of passing arguments between methods. This was an issue we had to visit after first building out initial solution.

What are the tradeoffs of using Arrays and Hashes for this challenge?
  Arrays are fine when returning simple lists, but my pairing peer and I agreed that hashes were essential as this would allow to work with a
  list of items and each item's quantity amount. Arrays were helpful at the start of the method as this allowed us to bring the inputted string into
  an array with each item as an element. From that point on we treated the list as a hash for the sake of our operations. 

What does a method return?
  Methods return values we have created through those methods internal operations. The value of the last variable declared in the method is usually what is returned. 

What kind of things can you pass into methods as arguments?
  You can pass many objects as arguments to a method, such as strings, integers, and arrays. What I also learned was that I could pass other methods as
  arguments, which I will touch upon in the response to the next question. 

How can you pass information between methods?
  Our first version of the code was logically sound but did not pass the rspec tests because we were not passing information between methods. Our mutual feelings
  of frustration grew as we avoided using classes to pass info. It wasn't until later that evening when we learned that methods could be passed as arguments to other
  methods. This was a game changer and cleaned up our code quite a bit. Every part of the code that involved returning a final output was consolidated to the bottom
  of the code for clarity sake. My pairing peer and I were able to reach out final solution through constant collaboration and reaching out during office hours. 

What concepts were solidified in this challenge, and what concepts are still confusing?
  Once again, passing methods as arguments was a brand new concept to me that I hope to keep using again. Once concept that still perplexes me is the need to convert
  things to arrays before converting them to a hash. I keep thinking there must be a simpler way of just going straight to a hash itself. I have not seen a way yet though. 


=end
=======
=======
 
>>>>>>> master
>>>>>>> master
