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

var findLongestWord = function (array) {

  var longestWord = array[0];
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longestWord.length) {
      longestWord = array[i];
    }
    else {
      longestWord; 
    }
  }
  return("The longest word is: " + longestWord);
}

// find a key-value match in 2 objects
// PSEUDOCODE:
// Create a function that takes 2 objects
//  - Use for loop to go over all the keys in the first object
//  - Add a conditional statement that checks whether 2 objects share a key - value pair:
//     - Use bracket notation to access the properties's value.
//     - Use "==" to compare object 1 property value with object 2's value
//     - Return true, if there's a match
//     - If there is no match, return false

var shareKeyValue = function (object1, object2) {
  for (var key in object1) {
    if (object1[key] == object2[key]) {
     return true;
    } 
  }
  return false;
}

// Generate random test data
// PSEUDOCODE:
// Define a function that takes an integer as parameter for length
//    - Create an empty array 
//    - Create a variable of all the letters
//    - Create a string from all the alphabets with a condition:
//         - String length should be min 1 letter and max 10 letter. 
//    - Push the string into the array after each word is made
//    - Do a loop that will create a new word and push to array until the given length
// Result: returns an array of strings with that length

var randomTestData = function (length) {
  var array = [];
  for (var i = 0 ; i < length; i++) {
    var alphabets = "abcdefghijklmnopqrstuvwxyz";
    var word = "";
    var wordLength = Math.floor(Math.random() * 10) + 1; 
    for (var count = 0; count < wordLength; count++) {
       word += alphabets.charAt(Math.floor(Math.random() * alphabets.length));
       word;
    }
    array.push(word);
  }
  return array;
}   

//Driver Code
//Release 0
console.log(findLongestWord(["long phrase","longest phrase","longer phrase"]));
console.log(findLongestWord(["hello my darling", "hello", "hi, dear", "hi"]));

//Release 1
console.log(shareKeyValue({name: "Steven", age: 54},{name: "Tamir", age: 54}));
console.log(shareKeyValue({name: "Lola", gender: "female"},{name: "Mark", gender: "male"}))

// Release 2
for (var i = 0; i < 10; i++) {
  var arrays = randomTestData(4);
  console.log(arrays);
  console.log(findLongestWord(arrays));
}
















