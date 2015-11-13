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