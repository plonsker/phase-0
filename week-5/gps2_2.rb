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

output = groceries("carrots apples oranges coffee!!!!") 
puts "You made a list with this"
p output
 output == {"carrots" => 1, "apples" => 1, "cereal" => 1, "pizza" => 1}

# p output["tangerines"] 


# Method to add an item to a list
# input: item name and optional quantity
# steps: check to see if key is already in hash 
#if not, add item name as key and quantity as value to existing hash with default quant as 1
# 
# output: Updated hash with groceries

def add_item(item, qty)
  output = groceries("carrots apples oranges coffee!")
  if output.has_key?(item)
    puts "Item already on list"
  else
    item.to_s
    qty.to_i
    output[item] = qty
  end
  output
end

p add_item('squash', 17)

# Method to remove an item from the list
# input: item to be removed
# steps: find the item
# remove the item (k/v)
# output: updated hash

def remove_item(item)
  output = groceries("carrots apples oranges coffee! squash cheese")
  if output.has_key?(item) == false
    puts "Nothing to remove"
  else
    output.delete(item)
  end
  output
end

p remove_item('carrots')

# Method to update the quantity of an item
# input: the item we want to update
# steps:find that item in the hash
#update value
# output: updated hash

def change_qty(item, qty)
  output = groceries("carrots apples oranges coffee squash cheese yogurt")
  if output.has_key?(item) == false
    puts "Item not found"
  else
    qty.to_i
    output[item] = qty
  end
  output
end
p change_qty("apples", 72)

# Method to print a list and make it look pretty
# input: the hash
# steps: convert values to strings
# print out hash as a string
# output: stringified hash

def stringify
  output = groceries("carrots apples oranges coffee")
  output.each do |key, value|
    puts key + " ==> " + value.to_s
  end
end
puts stringify