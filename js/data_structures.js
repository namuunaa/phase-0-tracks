// Release 0: Create array of items
var colors = ["Blue", "Raspberry ombre", "Pink", "Purple"];
var names = ["Winston", "Ed", "Charlie", "Ray"];

colors.push("Rainbow");
names.push("Lola");
names.push("Crackers");
colors.push("Green");
console.log(colors);
console.log(names);

//Release 1 Creating Object for names and colors. 

horse = {};
for(var i = 0; i < names.length; i++){
  horse[names[i]] = colors[i];
}

console.log(horse);

// Release 2. Creating a constructor function

function Car(model, year, color) {
  this.model = model;
  this.year = year;
  this.age = 2017 - year;
  this.color = color;
  this.honk = function() {
    if (this.age < 10) {
      console.log("beep beep!"); 
    }
    else { 
      console.log("ding ding!");
    }
   };
}

var anotherCar = new Car("Toyota", 2000, "Silver");
console.log(anotherCar);
anotherCar.honk();

var secondCar = new Car("Hyundai", 2010, "Black");
console.log(secondCar);
secondCar.honk();

var thirdCar = new Car("Honda", 1900, "Grey");
console.log(thirdCar);
thirdCar.honk();
