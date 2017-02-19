// Find the longest phrase
// PSEUDOCODE
// -Create an empty array to start
// -Declare a function that takes the array:
//    -Set the first item in the array as the longest word/phrase variable
//    -Do a loop that goes through each word/phrase length in the array
//    -Compare each length with the longest word/phrase variable
//    -If the length is longer, then change the value of the longest word/phrase to new value
//    -If not do nothing, keep the longest word as the default
// -Print the longest word/phrase

function findLongestWord(array) {

  var longestWord = array[0];
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longestWord.length) {
      longestWord = array[i];
    }
    else {
      longestWord; 
    }
  }
  return longestWord;
}

console.log(findLongestWord(["long phrase","longest phrase","longer phrase"]));
console.log(findLongestWord(["hello my darling", "hello", "hi, dear", "hi"]));


// find a key-value match in 2 objects
// PSEUDOCODE:
// Create a function that takes 2 objects
//  - Declare 2 empty objects in new variable s
//  - Add a conditional statement that checks whether 2 objects share a key - value pair:
//     - Use bracket notation to access a key's value.
//     - Use "==" to compare
//     - Return true, if there's a match
//     - Else, if there is no match, return false




















