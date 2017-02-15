// Pseudocode a function that reverses a string
// -Declare a function reverse that takes a string as a parameter
// -Create a loop that:
//    - Makes a new var i that equals the last character of the string (use str length - 1)
//    - Save the result in a new variable that will store the reversed string
//    - While i is greater than or equal to 0, do the loop
//    - each time decrement by one
//    - After each loop add the result to the newly created variable


function reverse(str) {
  var newString = "";
  for ( var i = str.length - 1; i >= 0; i --) {
    newString += str[i];
  }
  if (1 == 1) {
    console.log(newString);
  }
}
reverse("hello")