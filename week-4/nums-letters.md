##Reflecting on Numbers and Letters

###What does 'puts' do?

The 'puts' command prints the results of ruby code while creating a new line after the output. This is different from print, which is just prints everything without line breaks.

###What is an integer? What is a float?

An integer is a number without a decimal point within it, while a float numbers do have decimal points.

Integers: 7, -3, 51
Floats: 7.45, -3.2, 51.125

Integers are primarily used in programs. Floats are usually used for academic purposes or 3D graphics.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

In Ruby, most of the mathematical operations with integers or floats can produce the same results. The exception to this rule is division. Let us divide 7 by 2. As floats, 7.0 / 2.0 results in 3.5. As integers however, 7 / 2 results in 3. With Ruby, our powerful computers like to round down when it comes to division. Let's say you walk into a deli to get several coffees for your office team. You have $7 and coffees are surprsingly $2 a pop. In this case you are only going to be getting 3 coffees. You cannot get 3 and a half coffees for $7. The only thing that counts here is what you can walk away with (just three coffees). Same with Ruby and integers. There are some things you cannot divide, so expect only to get whole items. 

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
