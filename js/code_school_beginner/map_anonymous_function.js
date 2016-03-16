var passengers = [ ["Thomas", "Meeks"],
    ["Gregg", "Pollack"],
    ["Christine", "Wong"],
    ["Dan", "McGaw"] ];
var modifiedNames = passengers.map(function(arrayCell) {
  return arrayCell[0] + " " + arrayCell[1]; 
}
);

var modifiedNames = [ "Thomas Meeks",
    "Gregg Pollack",
    "Christine Wong",
    "Dan McGaw" ];

modifiedNames.map(function(arrayCell){alert("Yo, " + arrayCell + "!");});


var puzzlers = [
  function(input) {
  return (input * 3) - 8;
  },
  function(input) {
    return (input + 2) * (input + 2) * (input + 2);
  },
  function(input) {
    return input * input - 9;
  },
  function(input) {
    return input % 4;
  }
];
