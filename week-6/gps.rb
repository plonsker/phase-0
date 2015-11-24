# Your Names
# 1) Joe Plonsker
# 2) Alex Mitzman

# We spent 1.25 hours on this challenge.

# 


def serving_size_calc(item_to_make, people)
  #change order_quantity to something more intuitive
  #change library name to menu
  #Lines 8-16 determine if item_to_make is on the menu.  Refactor these lines just to print a simple message.  Error counter not neccessary.
  
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # error_counter = 3
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless menu.has_key?(item_to_make)
  
  

  # serving_size = library[item_to_make]
  leftovers = people % menu[item_to_make]
  number_of_items = people/menu[item_to_make]

  case leftovers
  when 0
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}"
  when 6
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}, you have #{leftovers} leftover ingredients.  Suggested baking items: 1 cake and 1 cookie or 6 cookies"
  when 5
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}, you have #{leftovers} leftover ingredients.  Suggested baking items: 1 cake or 5 cookies"
  else
    return "Calculations complete: Make #{number_of_items} of #{item_to_make}, you have #{leftovers} leftover ingredients. Suggested baking items: #{leftovers} cookies."
  end
end

p serving_size_calc("pie", 13)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

=begin

What did you learn about making code readable by working on this challenge?

I learned that the variables and method names should align with the real world conditions as much as possible and that they consistently 
make sense at each step in the code. 

Did you learn any new methods? What did you learn about them?
I learned the 'has_key?' method, which searches through a hash seeing if any of the keys match the input being worked with.

What did you learn about accessing data in hashes? 
I learned that there were specific methods for accessing elements within a hash and also learned that you can compare two arguments taken to
a set of keys and values in a hash stored for reference in a method. This will definitely come in handy in the future. 

What concepts were solidified when working through this challenge?
Combining multiple lines of code was a concept that was reinforced here. We were able to take four lines and put them onto one for our until
unless statement and combine multiple lines when calculating the modulus. 

=end