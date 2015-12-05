// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Zollie!

// Pseudocode

// take number (as argument)
// IF number is less than 4 digits, spit number out
//    each digit becomes it's own element in an array
//    reverse number
//    iterate through to determine where commas go
//       every so many numbers (3 or 4) gets a comma
// spitting out a number with commas

// Initial Solution
// number = 1234
//   -3 -2 -1 0 1 2 3
//    2  3  4 1 2 3 4 

// function separateComma(number) {
//   // create variables
//   var comma = -3;
//   var output = number.toString().split(''); 
//   var counter = output.length;
//   // IF less than 4 digits, we're done
//   if (number.length < 4) {
//     return number;}
//   // otherwise, iterate
//   else {
//     while (counter > 0) {
//         output.splice(comma,0,",")
//         comma -= 4;
//         counter -= 4;
//     }
//       // convert array of strings back to number
//       console.log(output.join(''));
//   }
// }

// // Driver Code

// separateComma(1234777777);
// separateComma(1234);
// separateComma(20823509253053209);

// Refactored Solution

function separateComma(number) {
  // create variables
  var array_element = -3;
  var output = number.toString().split(''); 
  var counter = output.length;
  // IF less than 4 digits, we're done
  if (number.length < 4) {
    return number;}
  // otherwise, iterate
  else {
    while (counter > 0) {
        output.splice(array_element,0,",")
        array_element -= 4;
        counter -= 4;
    }
      // convert array of strings back to number
      console.log(output.join(''));
  }
}

// Your Own Tests (OPTIONAL)

separateComma(1234777777);
separateComma(1234);
separateComma(20823509209);

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// Overall, this exercise did not take as long as my previous solo attempt in Ruby. We were able to spell out the problem
// in pretty much the same way, even thinking about it in Ruby terms to begin with. Sometimes we had to think backwards about
// how to solve the problem in JS since we had to be generally more explicit in our notation. 
// 
// What did you learn about iterating over arrays in JavaScript?
// Much to my surprise there did not seem to be the distinction between destructive and non-destructive methods. 
// You won't be able to know what a method does on notation alone. Very tricky and makes debugging a bit of a pain.

// What was different about solving this problem in JavaScript?
// As mentioned before, the discovery of some methods being inherently destructive or non-destructive made for some interesting
// tests. We also ran into some syntax issues as we attempted to make sure certain lines of code ended in the right place.

// What built-in methods did you find to incorporate in your refactored solution?
// splice and join were particularly helpful for inserting the comma in the correct place and giving us the desired output. 
// Also, .toString was very helpful in first helping us split the original integer apart. 

