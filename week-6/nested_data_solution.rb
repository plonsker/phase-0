
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][0][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

old = [5, [10, 15], [20,25,30], 35]
p new_array = old.dup.flatten.map {|number| number + 5}
p new_array
p old



# Bonus:

#startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#destructive
#new_names = startup_names.dup.flatten.map {|name| print name + 'ly, '}

#non-destructive

# name
# name2
# name3



#startup_names.each {|name| print name + 'ly, '}

#Reflection
=begin
What are some general rules you can apply to nested arrays?
A general rule to apply to nested arrays is to continously build upon the syntax used to target certain elements. 
In other words, treat a nested array as an element in another array while still applying array indexing techniques.
For example, to target 43 in nested_array, one must first treat the array its in as an element ([1]) and then target
43 as an element itself. 


nested_array = ["Joe", [43, "Dog"], 15, 7]

nested_array[1][0] => 43

What are some ways you can iterate over nested arrays?

One can iterate over a nested using the each method and a block. There are also several different methods such as
map to affect each element, though this will likely break down the structure of the original array into just one array. 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We reused old methods that we were familiar with, and had difficuluty in the bonus challenge creating a non-destructive method. We stuck with map as it allowed
us to iterate over every element. 


=end
