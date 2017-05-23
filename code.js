// Hoisting

function hoisting() {
  var a;
  var secondHoist;

  function firstHoist() {
    return "first hoist";
  }
  console.log(a)  // undefined
  console.log(firstHoist())  // "first hoist"
  console.log(secondHoist) // undefined
  console.log(secondHoist()) // TypeError

  a = 'a';

  secondHoist = function() {
    return "second hosit";
  }
}

hoisting()  
