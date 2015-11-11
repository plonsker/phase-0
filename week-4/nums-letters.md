##Reflecting on Numbers and Letters

###What does 'puts' do?

The 'puts' command prints the results of ruby code while creating a new line after the output. This is different from print, which is just prints everything without line breaks.

###What is an integer? What is a float?

An integer is a number without a decimal point within it, while a float numbers do have decimal points.

Integers: 7, -3, 51
Floats: 7.45, -3.2, 51.125

Integers are primarily used in programs. Floats are usually used for academic purposes or 3D graphics.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

In Ruby, most of the mathematical operations with integers or floats can produce the same results. The exception to this rule is division. Let us divide 7 by 2. As floats, 7.0 / 2.0 results in 3.5. As integers however, 7 / 2 results in 3. With Ruby, our powerful computers like to round down when it comes to division. Let's say you walk into a deli to get several coffees for your office team. You have $7 and coffees are surprisingly $2 a pop. In this case you are only going to be getting 3 coffees. You cannot get 3 and a half coffees for $7. The only thing that counts here is what you can walk away with (just three coffees). Same with Ruby and integers. There are some things you cannot divide, so expect only to get whole items. 

####Some quick Pine challenges:
The following challenges were entered directly onto the command line.
#####How many hours in a year?
irb(main):006:0> puts 24*365
8760
=> nil

#####How many minutes in a decade?
irb(main):007:0> (((60*24)*365)*10)
=> 5256000
irb(main):008:0>

##Further reflections

###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
For this question, I am assuming that 'handling' here is referring to the basic operations of Ruby in math. To start, ruby treats numbers as simply objects and not strings, so the number itself can be typed out whether it is in a simple mathematical operation or being assigned to a variable. As far as those mathematical operations go, the following symbols are used:
	Addition +
	Subtraction -
	Multiplication *
	Division /

###What is the difference between integers and floats?
The basic difference between floats and integers is that floats have decimals within them while integers do not. 

	Integer: 5
	Float: 5.3

###What is the difference between integer and float division?
Float division results in an output that one would expect from basic calculations.

Example: 7.0 / 3.5 = 1.

Integer division however rounds down to the nearest integer:

7 / 3 = 2

As discussed earlier in this reflection, integer division results in only the whole integers you could possibly walk away with. A lot of things just do not make sense to divide them any further.

What are strings? Why and when would you use them?
A string is an object containing multiple characters surrounded by quotes. For example, "hello" or "hello world" are strings. Even "5" is a string in this context. In my experience, the basic use for strings is for printing entire words or sequences of characters (puts "hello world") or for assigning values to variables (greeting = "hello word"). 

What are local variables? Why and when would you use them?
Local variables is a variable typically only used within a particular method or block, and, on a slightly higher level, module. Mostly we would use them only within those particular blocks of code. In our third challenge in this exercise, we set up some integer variables and did some basic arithmetic operations them. Those variables had some basic assignments and were only used within the context of those few exercises, hence they were only used 'locally'. If they were to be applied anywhere else or within the logical context of another block, then we would have to change them from local variables. More on that later. 


How was this challenge? Did you get a good review of some of the basics?
This was a solid review. I got to brush up on my basic knowledge and see rspec in action, not to mention check to see if my environment was actually running properly. 

