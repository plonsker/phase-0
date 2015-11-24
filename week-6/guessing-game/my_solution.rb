# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: Depending on the integer, either
# Steps: The class GuessingGame will be intialized with 'answer', which will be an integer. 
# We will then have an instance method called guess which will take a guessed intger as an input
# that will return either high, low, or correct depending on how that integer compares to the answer.
# 


# Initial Solution

=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess = @answer
  		print :correct
  	elsif @guess < @answer
  		print :low
  	elsif @guess > @answer
  		print :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?(guess)
  	if @guess = @answer
  		return true
  	else
  		return false
  	end
end
end
=end

#Now let's correct the obvious mistakes and account for the other methods stated in the release. 
=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	elsif @guess > @answer
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
  	@guess == @answer
  	if @guess == @answer
  		puts "Solved!"
  	else 
  		puts "Wrong!"
  	end
end
end
=end
#That last result had three errors because it does not run a loop until the answer is correct. 

=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	elsif @guess > @answer
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
	until @guess == @answer
  		puts "Try again!"
  	end
  	else
  		puts "Correct!"
  	end
end
=end

#DO NOT TRY THAT PREVIOUS SOLUTION. Just gave myself a lesson in recursion.

#After reading the rspec tests and release, it looks like I'll have to assign more instance
#variables in initialize method. 
=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
    # The next instance variables are taken from the release
    @last_result = nil
    @last_guess = nil
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		last_result = "Correct!"
  		return :correct
  	elsif @guess < @answer
  		@last_guess = "Wrong!"
  		return :low
  	elsif @guess > @answer
  		@last_guess = "Wrong!"
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
	if @last_result == "Correct!"
  		return true
  	end
  	else
  		return false
  	end
end
=end

#Last result cut down number of errors, but I am still getting 2 error messages for not
#reevaluating previous answers. 

=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
    # The next instance variables are taken from the release
    @last_result = nil
    @last_guess = nil
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		last_result = "Correct!"
  		return :correct
  	elsif @guess < @answer
  		@last_guess = "Wrong!"
  		return :low
  	elsif @guess > @answer
  		@last_guess = "Wrong!"
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
	unless @last_result == "Correct!"
  		return false
  	else 
  		return true
  	end
end
end
=end

#That loop I wrote did not work, and the variables aren't being passed.
#changing it to an if statement and going back to regular variables

=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
    # The next instance variables are taken from the release
    @last_result = nil
    @last_guess = nil
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		@last_result = "Correct!"
  		return :correct
  	elsif @guess < @answer
  		@last_guess = "Wrong!"
  		return :low
  	elsif @guess > @answer
  		@last_guess = "Wrong!"
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
  	@solved
	if @last_result == "Correct!"
  		return true
  	else
  		return false
  	end
end
end
=end

#One less error, but that reevaluation still isn't working. Maybe I need to put in 
#a gets.chomp in there to get a fluid response and giving that last method its until
#loop back

=begin
class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
    # The next instance variables are taken from the release
    @last_result = nil
    @last_guess = nil
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		@last_result = "Correct!"
  		return :correct
  	elsif @guess < @answer
  		@last_guess = "Wrong!"
  		return :low
  	elsif @guess > @answer
  		@last_guess = "Wrong!"
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
  	#@solved
	unless @last_result == "Correct!"
  		return false
  		puts "Wrong! Give it another shot!"
  		guess = gets.chomp.to_i
  	end
  	if @last_result == "Correct!"
  		return true
  		puts "You are correct!"
  	else
  		puts "You broke my code somehow."
  	end
end
end
=end

#Still not working. Have to make the 'solved?' method more fluid and responsive. 
#After doing some more work I realized that I didn't specify coniditions for the last_result
#and last_guess. This took waaaay too long.

class GuessingGame
  def initialize(answer)
  	@answer = answer
    # Your initialization code goes here
    # The next instance variables are taken from the release
    @last_result = nil
    @last_guess = nil
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		@last_result = "Correct!"
  		return :correct
  	elsif @guess < @answer
  		@last_guess = "Wrong!"
  		@last_result = "Wrong"
  		return :low
  	elsif @guess > @answer
  		@last_guess = "Wrong!"
  		@last_result = "Wrong!"
  		return :high
  	else
  		puts "Please enter an integer."
  	end
end

  def solved?
  	@solved
	unless @last_result == "Correct!"
  		return false
  		puts "Wrong! Give it another shot!"
  		guess = gets.chomp.to_i
  	end
  	
  	if @last_result == "Correct!"
  		return true
  		puts "You are correct!"
  	else
  		puts "You broke my code somehow."
  	end
end
end

# Refactored Solution

#Looking back, a lot of those instance variables I tried to pull from the rspec and
#releases were pretty redundant. Didn't even need to initialize them. I feel pretty silly
#now.
class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		return :correct
  	elsif @guess < @answer
  		return :low
  	elsif @guess > @answer
  		return :high
  	else
  		raise ArgumentError.new("Please enter a number.")
  	end
end

  def solved?
	unless @guess == @answer
  		return false
  		p "Wrong! Give it another shot!"
  		guess = gets.chomp.to_i
  	end
  	
  	if @guess == @answer
  		return true
  		p "You are correct!"
  	else
  		raise ArgumentError.new("Please enter a number.")
  	end
end
end

#All it came down to was refining the 'solve?' method and whether I would use and if or unless.
#Turns out I could use both. 




# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	
When should you use instance variables? What do they do for you?
	Instance variables should be used for when methods within a class need to share information between each other. 
	This allows one to build simple, non-redundant code where values of variables do not have to be repeatedly defined. 

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
	Flow control is used to produce a certain result based on the input a method receives. It allows one to create a logical structure
	through which that result is determined (if this, do this, else do that). I struggled with it in this challenge because it had slipped
	my mind that I could incorporate two flow control structures right into one method. I kept switching back and forth between an if/else construct
	and an unless or until loop, which resulted in the same error coming back. I knew I had to make the 'solved?' method a bit more dynamic and
	then it finally clicked for me.  

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	I assume symbols are helpful because they can be used like strings throughout a class but are not subject to be changed by methods. It's as
	if they have a certain wholeness that cannot be broken. I look forward to tooling around with them a bit more. 
=end