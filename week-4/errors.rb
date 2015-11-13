# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

#---- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.


#def cartman_hates(thing)
 # while true
   # puts "What's there to hate about #{thing}?"
  #end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? 
# The file with the error is errors.rb.
# 2. What is the line number where the error occurs? 
# => The error message told me the error was on line 172.
# 3. What is the type of error message?
# => Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected keyword missing, 'end'.
# 5. Where is the error in the code?
# => The error was actually within the code starting on line 13 and has been fixed on line 16. 
# 6. Why did the interpreter give you this error?
# => The interpreter was looking for an 'end' within the small method on the page and continued
# => to search for it until the end of the page. The 'while' portion of the code had to be ended
# => as well as the method.

#---- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => Line 38
# 2. What is the type of error message?
# => Undefined local variable.
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# => Line 38
# 5. Why did the interpreter give you this error?
# => The variable has no assignment assigned to it. It would need to be written as south_park = "string here!"

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => Line 53
# 2. What is the type of error message?
# => No method error
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method `cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
# Line 53
# 5. Why did the interpreter give you this error?
# => The method "cartman" was defined. To define a method cartman, we would write def cartman().

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
 
#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => Line 72
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# =>  wrong number of arguments (1 for 0) 
# 4. Where is the error in the code?
# => Technically both line 68 and 72. 
# 5. Why did the interpreter give you this error?
# => Tried an instance of the method with an argument with the method wasn't made to take
# => an argument in the first place. 
# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => Line 88
# 2. What is the type of error message?
# => (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#=> Line 92
# 5. Why did the interpreter give you this error?
# => There is not an argument passed to the instance of the method I called. 



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => Line 108
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2) (ArgumentError)
# 4. Where is the error in the code?
# => Line 112
# 5. Why did the interpreter give you this error?
# => Only one argument was passed. Two arguments would allow this to pass.
# => cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Kyle'!)
# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => Line 127
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum 
# 4. Where is the error in the code?
# => Line 127
# 5. Why did the interpreter give you this error?
# => You cannot multiply an integer by a string. If you want to print out the phrase 5 times,
# => you can do the following: 5.times {print "Respect my authoritay!"}
# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => Line 142.
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => Line 142
# 5. Why did the interpreter give you this error?
# => Just like in mathematics, you cannot divide by zero in Ruby. It's a meaningless, undefined
# => value. 

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 159
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# =>  cannot load such file -- C:/Users/Joe/phase-0-curriculum/phase-0/week-4/cartmans_essay.md 
# 4. Where is the error in the code?
# => Line 159 technically!
# 5. Why did the interpreter give you this error?
# => There is no such file called cartmans_essay.md on my machine, therefore it cannot be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
	#The most difficult errors to read for me were the ArgumentErrors.
#How did you figure out what the issue with the error was?
	#I have had trouble distinguishing whether arguments needed to supplied or weren't being taken. 
	#I was able to distinguish the difference though by the number of arguments (0 for 1 versus 1 for 0).
#Were you able to determine why each error message happened based on the code? 
	#Yes, I was able to hone in on every issue. For most I was able to determine that the code would not
	#run, but hadn't seen their associated error messages. This backward learning was proven quite effective.
#When you encounter errors in your future code, what process will you follow to help you debug?
	#Follow the error messages exactly. Go to the line that is stated as being the source of the error and see
	#if the context of the code is creating the error on that line or elsewhere. 

