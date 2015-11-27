#Attr Methods

# I worked on this challenge by myself

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: Name
# Output: Greetings and a name
# Steps: We will have a new class that will have an initialize method where name is established.
# Then we will have a class 'Greetings' that returns a greetings and the new name. 


class NameData
	def initialize(name)
		@name = name
	end
end


class Greetings
    def hello
    	@new_name = NameData.new
        puts "Hello, student #{@name}!"
    end

end

name = NameData.new('Joe')
greet = Greetings.new
p greet.hello


# Reflection

=begin
Release 1

What are these methods doing?
	These methods are printing previously saved/dedicated information for particular fields (name, age, occupation), then taking in new arguments
	to print out another version of each field 

How are they modifying or returning the value of instance variables?
	The methods are returning the original values of the instance variables and uses the sleep method to create an artificial delay 
	with printing them. Then the new instance of the class prints updated values of the original variables. 


Release 2

What changed between the last release and this release?
	First, a reader method was added.  attr_reader was added to return the age outside of the glass.
	The age variable itself did not need to be defined in its own method in this release. I am sure this is directly
	linked to the attr_reader method and it calling age as a symbol. Perhaps this concept will become more clear to me as I move on.


What was replaced?
	Specifically the method that defined the instance variable age was removed and replaced by the attr_reader addressed in the previous response.

Is this code simpler than the last?
	A bit straightforward since it removes a method, but I am not entirely clear on how this reader method works in the field. Perhaps its
	developered further in release 3. 

Release 3

What changed between the last release and this release?
	Okay, this is pretty cool. Another method was removed and replaced with another reader method, this time attr_writer. It looks
	as if this one-line reader performs the same task as the method that assigned a new value to the age variable. 
What was replaced?
	The change_my_age method was replaced with the attr_writer method.

Is this code simpler than the last?
	A bit simpler. I would eventually like to see most of the methods in the class replaced with similar methods. 


6.4 Overall Reflection

What is a reader method?
	A reader method allows one to return a value outside of a class without changing it. 

What is a writer method?
	A writer method allows one to change a variable's value outside of a method. However that value
	is not readable in this case.

What do the attr methods do for you?
	Attr methods allow one to access or modify variables outside of a class

Should you always use an accessor to cover your bases? Why or why not?
	Some things should be left to methods, since one would want to avoid making all methods so easily accessible
	for the sake of security. Some classes and methods should not be able to access each other.  

What is confusing to you about these methods?
	What confuses me now is when to make the call regarding the use of those attr methods. Perhaps when PII (personally identifiable information)
	is being used, or passwords. 

=end

