//As a user, I want to be able to submit a group of numbers then it will return the average, median and sum of the group.

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



// Running our final solution on its own with a sample array worked. However, the solution did not pass 
// the tests for sum, mean, and median. When I ran the tests the result was a ReferenceError: [variable] 
// is not defined. I believe we received this error because our tests expected our final solution to name 
// each variable and its function on its own. In our final solution, we have all the variables defined on one line and 
// then have various functions performing their own operation below. From what I understand, node doesn't see that our 
// variables are defined and they are therefore inaccessible. I suppose then it is our consolidation of variables in the final solution
// that may be holding us back. Perhaps if we called out the variables as their specific functions in accessible blocks,
// we would pass all those tests. 
// Looking at it now, I (person 1) should have probably made it clear that I was looking for a program with various functions
// instead of making it seem as if I needed one function to perform all three operations. Then again, I doubt the typical client 
// would be so clear when asking you to write something.  