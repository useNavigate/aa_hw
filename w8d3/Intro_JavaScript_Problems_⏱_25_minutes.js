/*Phase I: Callbacks
Write a function titleize that takes an array of names and a function (callback).
titleize should use Array.prototype.map to create a new array full of titleized versions of each name - titleize meaning
"Roger" should be made to read "Mx. Roger Jingleheimer Schmidt".
Then pass this new array of names to the callback,
which should use Array.prototype.forEach to print out each titleized name.

> titleize(["Mary", "Brian", "Leo"], printCallback);
Mx. Mary Jingleheimer Schmidt
Mx. Brian Jingleheimer Schmidt
Mx. Leo Jingleheimer Schmidt */

const printCallback = (el) => {
  console.log(el);
};
Array.prototype.titleize = function (callback) {
  this.map((el) => `Mx. ${el} Jingleheimer Schmidt`).forEach((sentence) =>
    callback(sentence)
  );
};

["Mary", "Brian", "Leo"].titleize(printCallback);

/*Phase II: Constructors, Prototypes, and this
First, write a constructor function for an elephant.
Each elephant should have a name, height (in inches),
and array of tricks in gerund form (e.g. "painting a picture" rather than "paint a picture"). */

/*Next, write a few prototype functions that will be shared among all elephants:

Elephant.prototype.trumpet: should print "(name) the elephant goes 'phrRRRRRRRRRRR!!!!!!!'"
Elephant.prototype.grow: should increase the elephant's height by 12 inches
Elephant.prototype.addTrick(trick): add a new trick to their existing repertoire
Elephant.prototype.play: print out a random trick, e.g. "(name) is (trick)!"
Hint: look up some JS Math methods!
Make sure to create an elephant and test all of these functions out on them method style!*/

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;

  this.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
  };

  this.grow = function () {
    // Number(`${this.height}`) + 12;
    this.height + 12;
  };
  this.addTrick = function (trick) {
    this.tricks.push(trick);
  };
  this.play = function () {
    let index = Math.floor(Math.random() * tricks.length);
    console.log(`${this.name} is ${this.tricks[index]}!`);
  };
}

const Eli = new Elephant("Eli", 60, ["jumping", "dancing", "singing"]);

// testing code from node. its working :)
// Eli.trumpet()
// Eli the elephant goes 'phrRRRRRRRRRRR!!!!!!!'
// undefined
// > Eli.play()
// Eli is singing!
// undefined
// > Eli.play()
// Eli is dancing!
// undefined
// >
// > Eli.addTrick("paingting a masterpiece")
// undefined
// > Eli.play()
// Eli is paingting a masterpiece!
// undefined
