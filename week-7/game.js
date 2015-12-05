 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Bob, an associate at a consulting firm in nyc, nearly has a mental breakdown
// upon learning that the Keurig machine is broken. He must grab a cup of coffee near his office 
// while avoiding being served papers in a legal dispute.
// Goals: Grab coffee, avoid server
// Characters: Bob nd the law clerk.
// Objects: Coffee, court papers
// Functions: Grab coffee, run

// Pseudocode
//Bob will leave his office at a certain location (x,y). Coffee will be at another location and the law clerk
//will be somewhere downtown trying to intercept Bob. 
//Both coffee and law clerk will be in random locations. Coffee will remain in its location while Bob looks
//for it. The law clerk will progress as Bob progresses. If Bob grabs the coffee without running into the clerk, he
// has succeeded. If he runs into the clerk, he will have been served with legal papers and have lost the game. 
//
//
//

// Initial Code

// Here is player information
// var player = {
// 	id: 'Bob',
// 	workName: 'associate',
// 	health: 10,
// 	X: 0,
// 	Y: 0,
// 	coffee: 0,
// 	success: false,

// move: function(direction) {
//   if(direction === 'right'){
//     this.X +=5;
//   }
//   else if(direction === 'left'){
//     player.X -=5;
//   }
//   else if(direction === 'up'){
//     player.Y += 5;
//   }
//   else if(direction === 'down'){
//     player.Y -=5;
//   }

//   law_clerk.X = Math.floor(Math.random());
//   law_clerk.Y = Math.floor(Math.random());
//   console.log("The law clerk is at " + law_clerk.X + "," + law_clerk.Y);

// // Let's see how our friend bob is doing against the law clerk. 
//   if(player.X === law_clerk.X && player.Y === law_clerk.Y){
// console.log("You just got served! Better lawyer up!");
// }

// else if(player.X === coffee.X && player.Y === coffee.Y){
//   player.success = true;
//   player.coffee = 100;
//   console.log("You grabbed the coffee! Hooray! Now get back to work.");
// }
// }
// }

// var coffee = {
// X: Math.floor(Math.random()),
// Y: Math.floor(Math.random())
// };

// var law_clerk = {
// X: Math.floor(Math.random()),
// Y: Math.floor(Math.random())
// };

//when Bob runs, the law clerk runs too

// Initial solution 2:

// var player = {
// 	id: 'Bob',
// 	workName: 'associate',
// 	X: 0,
// 	Y: 0,
// 	coffee: 0,
// 	success: false,

// move: function(direction) {
//   if(direction === 'right'){
//     this.X +=10;
//   }
//   else if(direction === 'left'){
//     player.X -=10;
//   }
//   else if(direction === 'up'){
//     player.Y += 10;
//   }
//   else if(direction === 'down'){
//     player.Y -=10;
//   }

//   law_clerk.X = Math.floor(Math.random() * 50 + 1),
//   law_clerk.Y = Math.floor(Math.random() * 50 + 1),
//   console.log("The law clerk is at " + law_clerk.X + "," + law_clerk.Y);
  
//   //Display where player is
// console.log("Bob's position is " + player.X + "," + player.Y);


// // Let's see how our friend bob is doing against the law clerk. 
//   if(player.X === law_clerk.X && player.Y === law_clerk.Y){
// console.log("You just got served! Better lawyer up!");
// }

// else if(player.X === coffee.X && player.Y === coffee.Y){
//   player.success = true;
//   player.coffee = 100;
//   console.log("You grabbed the coffee! Hooray! Now get back to work.");
// }
// }
// };

// var coffee = {
// X: Math.floor(Math.random() * 50 + 1),
// Y: Math.floor(Math.random() * 50 + 1)
// };

// var law_clerk = {
// X: Math.floor(Math.random() * 50 + 1),
// Y: Math.floor(Math.random() * 50 + 1)
// };

// console.log(player)
// console.log(coffee)

var player = {
  id: 'Bob',
  X: 0,
  Y: 0,
  success: false,

move: function(direction) {
  if(direction === 'right'){
    this.X +=1;
  }
  else if(direction === 'left'){
    player.X -=1;
  }
  else if(direction === 'up'){
    player.Y += 1;
  }
  else if(direction === 'down'){
    player.Y -=1;
  }

// Let's track where the clerk and bob are. 
  console.log("Bob's position is " + player.X + "," + player.Y);
  
  console.log("The law clerk is at " + law_clerk.X + "," + law_clerk.Y);
  


// Let's see how our friend bob is doing against the law clerk. 
  if(player.X === law_clerk.X && player.Y === law_clerk.Y){
console.log("You just got served! Better lawyer up!");
} 
  
else if(player.X === coffee.X && player.Y === coffee.Y){
  console.log("You grabbed the coffee! Hooray! Now get back to work.");
  player.success = true;
}
}
};

var coffee = {
X: Math.floor(Math.random() * 7 + -3),
Y: Math.floor(Math.random() * 7 + -3)
};

var law_clerk = {
X: Math.floor(Math.random() * 7 + -3),
Y: Math.floor(Math.random() * 7 + -3)
};

console.log('law_clerk', law_clerk);
console.log('coffee', coffee);
player.move('right');
player.move('up')
player.move('left')



// Refactored Code


var player = {
  id: 'Bob',
  X: 0,
  Y: 0,

move: function(direction) {
  if(direction === 'right'){
    this.X +=1;
  }
  else if(direction === 'left'){
    player.X -=1;
  }
  else if(direction === 'up'){
    player.Y += 1;
  }
  else if(direction === 'down'){
    player.Y -=1;
  }

  console.log("Bob's position is " + player.X + "," + player.Y);
  
  console.log("The law clerk is at " + law_clerk.X + "," + law_clerk.Y);
  
  if(player.X === law_clerk.X && player.Y === law_clerk.Y){
console.log("You just got served! Better lawyer up!");
} 
  
else if(player.X === coffee.X && player.Y === coffee.Y){
  console.log("You grabbed the coffee! Hooray! Now get back to work.");
}
}
};

var coffee = {
X: Math.floor(Math.random() * 7 + -3),
Y: Math.floor(Math.random() * 7 + -3)
};

var law_clerk = {
X: Math.floor(Math.random() * 7 + -3),
Y: Math.floor(Math.random() * 7 + -3)
};

// Driver/testing code here
console.log('law_clerk', law_clerk);
console.log('coffee', coffee);
player.move('right');
player.move('up')
player.move('left')





// Reflection
// What was the most difficult part of this challenge?
// Getting all the obkjects to interact with each other was more difficult than I had anticipated. I had to figure out 
// How to indicate that if Bob and the law clerk crossed paths then the game would be over. Also had some trouble dictating
// the range over which Bob would be running around the city. I looked up how to create a positive and negative range for my player
// to travel. through.
// What did you learn about creating objects and functions that interact with one another?
// I learned that if you have certain properties of objects line up or equal each other, you can dictate a certain result (in this case,
// printing whether Bob had gotten a coffee or in fact was served with legal papers. )
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// The math methods were brand new to me (Math.floor and Math.random). I didn't realize that random would generate not an integer but a number
// with a decimal place. Math.floor allowed me to round that number to the closest integer. 
// How can you access and manipulate properties of objects?
// I believe this was covered in one of my previous reflections. We can do it by calling a particular method or funciton we have defined on it
// by using a period or brackets. 

