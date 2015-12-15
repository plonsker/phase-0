// Reverse Words


// I worked on this challenge by myself.
// This challenge took me 1.5 hours.

// Pseudocode
// The goal here is to create a function that reverses each word in a sentece. To do that, we will turn the sentence
// into an array and reverse the elements and join them again. Then we perform the same action on the new output or
// a variation of it until we get our desried result. 



// Initial Solution

// Ruby code here:

// def reverse_words(sentence)
//   flipped_words = sentence.split('').reverse.join.split('').join.split.reverse.join(' ')
//   print flipped_words
// end

// reverse_words('how do you do fellow kids')


// JS attempt
var sentence = 'how do you do fellow kids'
sentence.split('').reverse().join('').split(' ').reverse().join(' ');


// Refactored Solution (as a function)

function reverse_words(sentence){
return sentence.split('').reverse().join('').split(' ').reverse().join(' ');
}


reverse_words('how do you do fellow kids');



// Reflection
// What concepts did you solidify in working on this challenge?
// I actually went back to my initial solution I had created from Ruby and mimiced the effect. Doing so solidified
// my understanding that I could daisy chain several methods for my desired result. 
// What was the most difficult part of this challenge?
// I got pretty discombobulated because I mixed up join and split methods. I had to delete each method I strung
// together to remind myself of how they functioned. I think my process should have been a little more refined than 
// trying to reassemble to methods until I got what I wanted. 
// Did you solve the problem in a new way this time?
// A little bit. The JS version was almost more efficient. 
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// They shared the same concept that different variations of the methods strung together would produce what we wanted.
// I have a lot of fun just trying variations of something until I get something I like. Perhaps I should slow down when
// writing the pseudocode. 


