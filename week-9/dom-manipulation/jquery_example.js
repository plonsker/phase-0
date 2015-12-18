// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
bodyElement = $('body')

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements

$('body>h1').css({'background-color': 'green', 'border': '5px solid black', 'visibility': 'visible'});
$('.mascot>h1').html('Chorus Frogs')
//RELEASE 5: Event Listener
  // Add the code for the event listener here

    $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/en/8/81/MichiganJFrog.png')
  });

    $('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  });



//RELEASE 6: Experiment on your own

$('body>h1').animate({'border-width': '10px solid black'});




}); // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection
// What is jQuery?
// jQuery is a JavaScript library which makes it easier to manipulate HTML and CSS elements.
// What does jQuery do for you?
// jQuery allows one to select elements in HTML and/or CSS and alter characteristics of that field. 
// What did you learn about the DOM while working on this challenge?
// We can run certain scripts in the DOM via the counsel and pinpoint specific fields we want to make changes to.