# Using string interpolation for this exercise #

puts "Greetings. What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Your full name is #{first_name} #{middle_name} #{last_name}."

puts "Now, give me your favorite number."
num = gets.chomp
num2 = num.to_i + 1

puts "#{num} is a nice number. However, I prefer #{num2} myself. #{num2} is a bigger, better number."


=begin
	-How do you define a local variable? 
		One can define a local variable by giving it a name and then assigning it a value. For example,
		my_name is a local variable and it is assigned to a value of "Joe".
		my_name = "Joe"

	-How do you define a method?
		I will do my best to not be redundant here! A method can be defined by giving it a name and
		defining it on the same line. If one were to define a method called 'greeting', it would look
		like this: def greeting.

	-What is the difference between a local variable and a method?
		A local variable is a variable one can use within the context of a certain block of code, a module,
		or a class. A local variable's use is limited by its context. A method is a reusable section of code
		that can perform a specific task in a program.

	-How do you run a ruby program from the command line?
		If I want to run a previously created ruby file from the command line, I would run ruby [filename].rb
		within that file's directory. If I want to simply run some ruby cody on the command line, I'd write out
		'irb' followed by the code to be executed. That way I'm emulating a ruby environment on the command line.
	-How do you run an RSpec file from the command line?
		First I would write out 'rspec' on the command line followed by the spec filename. 
	-What was confusing about this material? What made sense?
		I thought this material was pretty straightforward and a great review of previously learned Ruby practices.
		It took me a while to realize the importance of reading spec files, but this point was driven home during my 
		pairing session.

		Address exercise: https://github.com/plonsker/phase-0/blob/master/week-4/address/my_solution.rb
		Math exercise: https://github.com/plonsker/phase-0/blob/master/week-4/math/my_solution.rb
=end