# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 5.5 hours on this challenge. Too long. :-/


# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Method will select a random letter from array or hash of letters and a random number from a number range.
  #Method will then print both the letter and number as a string (a bingo ball in the real world.)

# Check the called column for the number called.
  #The next method will go through each row or column to find whether the number at the particular
  #index equals the called number on the ball. 

# If the number is in the column, replace with an 'x'
  #If the number in the column/row equals the number called, replace that number and only that number
  #with an x

# Display a column to the console [Necessary?]
  #Call an instance of that previous method. 

# Display the board to the console (prettily)
  #Print each row of the bingo board individually on their own lines. 

#Breakdown of methods:

  #Here we have the initial code to generate a bingo ball to be called. 
 

#   def initialize(board)
#     bingo_board = board
#     @bingo_letters = ['B', 'I', 'N', 'G', 'O']
#     @number = rand(1..99)
#     @letter = @bingo_letters.sample
#   end

#   def bingo_ball
#     return @number + @letter
#   end

# end

#Changing the array to a hash for column alignment


#   def initialize(board)
#     @bingo_board = board
#     @bingo_letters = {'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4}
#     @number = rand(1..99)
#     @letter = @bingo_letters.sample
#   end

#First Initial solution
# class BingoBoard

#  def initialize(board)
#     @bingo_board = board
#     @bingo_letters = {'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4}
#     @bingo_indexes = @bingo_letters.to_a.sample
#     @called_number = rand(73..75) #Changed the range to 73..75 so that I could test this with few attempts. 
#     @letter = @bingo_indexes[0]
#     @column = @bingo_indexes[1]
#   end 
  
  
#   def bingo_ball_call
#     @number = @called_number
#     puts "#{@letter}#{@number}!"
#     puts @column
#   end

#  def board_call
   
#    if @bingo_board[0][@column] == @number
#      Array(@bingo_board[0][@column]).map! {|num| num == @number ? 'x' : num}

#     elsif  @bingo_board[1][@column] == @number
#      Array(@bingo_board[1][@column]).map! {|num| num == @number ? 'x' : num}
 
#      elsif  @bingo_board[2][@column] == @number
#      Array(@bingo_board[2][@column]).map! {|num| num == @number ? 'x' : num}

#      elsif  @bingo_board[3][@column] == @number
#      Array(@bingo_board[3][@column]).map! {|num| num == @number ? 'x' : num}

#      elsif  @bingo_board[4][@column] == @number
#      Array(@bingo_board[4][@column]).map! {|num| num == @number ? 'x' : num}
   
#     else
#    print @bingo_board
#    end
#   end
  
#  def print_board  
#    p @bingo_board[0]
#    p @bingo_board[1]
#    p @bingo_board[2]
#    p @bingo_board[3]
#    p @bingo_board[4]
#  end
# end

#This failed miserably. #map isn't working, and the hashes aren't working either to get an index number.
#It also printed out a ton of results I did not need.
#I spent more than two hours trying to debug this and got super lost. I refused to stop working and got
#into a ton or rabbitholes. Probably the poorest I have done on a solo challenge so far. 
#I will likely start over, discarding the hash and column numbers.

#Fresh start. Stopped using #map and my @column variable and started thinking in terms of arrays/rows.

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @bingo_letters= {'B' => 0, 'I' => 1, 'N' => 2, 'G' => 3, 'O' => 4}
#     @letter = @bingo_letters.keys.sample
#     @called_number = rand(1..99)
#   end 
  
  
#   def bingo_ball_call
#     @number = @called_number
#     puts "#{@letter}#{@number}!"
#     puts @column
#   end

#   def board_call
#    case #Creates a case that interacts with each array/row at a specific index.
#    when "B"
#         @bingo_board.each do |row|
#           row[0] = "x" if row[0] == @number
#         end
#       when "I"
#         @bingo_board.each do |row|
#           row[1] = "x" if row[1] == @number
#         end
#       when "N"
#         @bingo_board.each do |row|
#           row[2] = "x" if row[2] == @number
#         end
#       when "G"
#         @bingo_board.each do |row|
#           row[3] = "x" if row[3] == @number
#         end
#       when "O"
#         @bingo_board.each do |row|
#           row[4] = "x" if row[4] == @number
#         end
#     end
#   end
  
#   def print_board
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end
# end

#Refactored Solution


class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_letters= ['B', 'I', 'N', 'G', 'O'] #changed to an array. hash redundant
    @letter = @bingo_letters.sample
    @called_number = rand(1..100) #changed to 100 as stated in instructions
  end 
  
  
  def bingo_ball_call
    @number = @called_number
    puts "#{@letter}#{@number}!"
    puts @column
  end

  def board_call
   case
   when "B"
        @bingo_board.each do |row|
          row[0] = "x" if row[0] == @number
        end
      when "I"
        @bingo_board.each do |row|
          row[1] = "x" if row[1] == @number
        end
      when "N"
        @bingo_board.each do |row|
          row[2] = "x" if row[2] == @number
        end
      when "G"
        @bingo_board.each do |row|
          row[3] = "x" if row[3] == @number
        end
      when "O"
        @bingo_board.each do |row|
          row[4] = "x" if row[4] == @number
        end
    end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
puts new_game.bingo_ball_call
new_game.board_call
new_game.new_board


#Relfection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  # I thought the pseudocode setup deceived me into thinking my solution would come a lot sooner. I think I would have benefited from

  # writing out my thought process outside of the outline given in the reflection doc. 

# What are the benefits of using a class for this challenge?
  # Using a class in this exercise allowed me to access all the variables I needed at any time they could be used. 

# How can you access coordinates in a nested array?
  #You can access them by using the index number part of the access syntax as many times as needed. Here's an example from my very first
  #solution attempt: @bingo_board[1][@column]. In this case, @bingo_board was the array made up of subarrays, and [1] accessed that first array
  #while @column (standing for a number) referenced the index of that particular array. The syntax just needs to be modified for how deeply nested
  #that element your trying get is.

# What methods did you use to access and modify the array?

  #In my final solution, i went with a case and a block for each possibile outcome. I originally tried to use #map to access and modify the array,
  #but kept getting errors due mixing up integers and strings so much. It came to the point where the method of accessing elements I had learned this
  #week couldn't be implemented. I am a bit disappointed that I couldn't get it to work. I will have to make this more of a learning opportunity on my own time. 

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  #I'm going to refer to my initial solution here and my use of #map. This was the first time I had tried to implement this outside of a pairing session.
  #I was hoping it would run the block I gave it for each element in the array specified. The method did not work in this situation though. 

# How did you determine what should be an instance variable versus a local variable?
  #I used exclusively instance variables in this exercise since I figured I would use the same instance variables throughout.

# What do you feel is most improved in your refactored solution?
  #Using an array instead of a hash simplified things. The hash was an artifact of trying to be clever with columns.
  #The whole issue with my original solution was that I was thinking about it completely wrong. I never had to think of it in terms of columns,
  #but just indexes in individual arrays! This was a huge lesson here and showed that I was making things unnecessarily complicated. 
  #I had to cut myself off from messing around on this challenge any further, but if given the time I would collapse a few of my methods to one-line
  #solutions. 











