// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.


var earnings = 400;
    earnings = earnings -300;
    console.log (earnings);


prompt("what is your favorite food?");
confirm("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var number = 0; number <= 100; number += 1)
{
    if(number % 3===0){
         console.log("Fizz");
    }
    else if(number % 5===0){
         console.log("Buzz");
    }
    else console.log(number);
}

// Functions

// Complete the `minimum` exercise.

var min = function(num1, num2) {
    return (num1 <= num2) ? num1 : num2;
};



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.