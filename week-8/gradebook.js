/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
// var gradebook = {
//   "Joseph": {testScores: scores[0]},
//   "Susan": {testScores: scores[1]},
//   "William": {testScores: scores[2]},
//   "Elizabeth": {testScores: scores[3]},
  
//   addScore: function(name, score) {
//     this[name]["testScores"].push(score);
//   },
  
//   getAverage: function(name) {
//     var scores = this[name]["testScores"];
//     return average(scores);
//   },

// };

// function average(numbers) {
//   var sum = 0;
//   for (var i = 0; i < numbers.length; i++) {
//     sum += numbers[i];
//   }
//   return sum / numbers.length;
// }






// __________________________________________
// Refactored Solution

var gradebook = {
  
// IF YOU HAVE ANY FEEDBACK ON WHY THIS DOESNT WORK PLEASE SHARE
//   initialize: function(students, scores) {
//     for (var i = 0; i < students.length; i++) {
//       this[students[i]] = {testScores: scores[i]}
//     }
//   }
  
//   initialize(students, scores);
  "Joseph": {testScores: scores[0]},
  "Susan": {testScores: scores[1]},
  "William": {testScores: scores[2]},
  "Elizabeth": {testScores: scores[3]},
  
  
  addScore: function(name, score) {
    this[name]["testScores"].push(score);
  },
  
  getAverage: function(name) {
    return average(this[name]["testScores"]);
  },

};

function average(numbers) {
  var sum = numbers.reduce( function(a, b) {return a + b;}, 0);
  return sum / numbers.length;
}







// __________________________________________
// Reflect


// What did you learn about adding functions to objects?
// First, I learned that it was possible! Great start right there. Then I learned that those functions can
// be properties in the function and do things to their fellow properties. My previous impression of JS was that it
// was clunky, but now it looks incredibly flexible. JS just got way more interesting for me.

// How did you iterate over nested arrays in JavaScript?
// We used a few built-in methods such as push and sum. This got us to add new scores where we needed them as well as
// calculate the average score. 
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// Not necessarily any methods but we attempted to be clever and take out the first property of names from the list and
// replace them with an initialize method. We agreed that the concept seemed viable but we could not get it to work. Not to
// worry though as the program itself remained operational. 






// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)