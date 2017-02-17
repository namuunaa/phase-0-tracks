// Find the longest phrase
// PSEUDOCODE
// -Create an empty array to start
// -Declare a function that takes the array:
//    -Set an empty variable for the longest word/phrase 
//    -Do a loop that goes through each word/phrase length in the array
//    -Compare each length with the longest word/phrase variable
//    -If the length is longer, then change the value of the longest word/phrase to new value
//    -If not do nothing, keep the longest word as the default
// -Print the longest word/phrase

function Word(array) {

  this.array = array;
  this.findLongestWord = function() {  
  var longest_word = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest_word.length)
      longest_word = array[i];
    else
      longest_word; 
  }
  };
}
var newArray = new Word("long phrase","longest phrase","longer phrase");
console.log(newArray.findLongestWord())
// not working ,come back to it