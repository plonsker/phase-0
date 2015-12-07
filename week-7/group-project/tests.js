
// Add the finished solution here when you receive it.
// __________________________________________
function arrayMath(array){

  var sum = getSum(array), median = getMedian(array), mean = getMean(array);
  console.log('Your calculations are complete, the sum is '+sum+', the median is '+median+' and the mean is '+mean);
};


//As a user, I want to be able to submit a group of numbers then it will return the sum of all the numbers in the group.
function getSum(array){
  return array.reduce(function(a,b) {return a+b;});  //Not supported by all browsers
};

//As a user, I want to be able to submit a group of numbers then it will return the median of the group.
function getMedian(array){
  array.sort(function(a, b){return a-b});
  var len = array.length;
  if(len % 2 == 0){
    return (array[len/2] + array[(len/2)-1])/2;
  }
  else{
    return array[(len-1)/2];
  }
};

//As a user, I want to be able to submit a group of numbers then it will return the average of the group.
function getMean(array){
  return getSum(array)/array.length;
};

arrayMath([5, 1, 9, 10, 100]);

// Tests:  Do not alter code below this line.

//As a user, I need a program that calculates the sum, mean, and median of an array, regardless of
//length.  

oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)