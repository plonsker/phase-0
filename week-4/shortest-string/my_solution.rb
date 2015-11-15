# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

#Please do not laugh at my first solution. I thought I could be really clever
#and list all sort all the words, get the length of each, then sort them again.
#But in reality that doesn't even make sense. What on earth would I be printing?
#An integer? Back to the drawing board. 
#def shortest_string(list_of_words)
  # Your code goes here!
#  list_of_words.sort! {|firstWord,secondWord| firstWord <=> secondWord}
#  list_of_words!.each.length.sort! {|firstWord, secondWord| firstWord <=> secondWord}
#  return list_of_words![0]
#end

#In the previous exercises I took the numbers and changed them to an array then to integers.
#Maybe I could do something to each of words like I did to the integers?
#Also, get rid of the new methods created with the exclamation marks. 
#def shortest_string(list_of_words)
  # Your code goes here!
#  list_of_words.to_a.sort! {|firstWord,secondWord| firstWord <=> secondWord}
#  list_of_words.to_a.each.length.sort! {|firstWord, secondWord| firstWord <=> secondWord}
#  return list_of_words[0]
#end

#Still clinging to the same logic though. I have caved and have looked at the ruby docs.
#No need to sort, but I can still use the length method here
#def shortest_string(list_of_words)
  # Your code goes here!
#  list_of_words.to_a.sort {|word| word.length}
#  return list_of_words[0]
#end

#Yes! Only one failure listed!. But why?
#The error says "expected: 'a' got: 'aaaaaaa'. So for some reason its following
#a different logic. Perhaps change the 'sort' to 'sort!'?

#def shortest_string(list_of_words)
  # Your code goes here!
#  list_of_words.to_a.sort! {|word| word.length}
#  return list_of_words[0]
#end

#Two errors. Whoops. Let's change it back and see if we can work within the same logic.

#def shortest_string(list_of_words)
  # Your code goes here!
#  list_of_words.to_a.sort {|word| word.length}
#  return list_of_words[0]
#end

#Now I am getting one error that's saying I'm getting things in alphabetical order instead.
#Changed sort to sort_by based on ruby docs 

#def shortest_string(list_of_words)
  # Your code goes here!
#  list_of_words.to_a.sort_by {|word| word.length}
#  return list_of_words[0]
#end

#Same "aaaaa" error as before. Maybe I should change the 'sort_by' to 'sort_by!'

def shortest_string(list_of_words)
  # Your code goes here!
  list_of_words.to_a.sort_by! {|word| word.length}
  return list_of_words[0]
end

#Success! I just had to remember that the exclamation mark tells the method that
#whenever I bring up 'list_of_words' again, I'm referring to the altered version of
#it I specified earlier in the method.