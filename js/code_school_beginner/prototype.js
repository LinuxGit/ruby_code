var adult: { age: 27 };
adult.toString = function() {
  return "I'm " + this.age;
}

var child = Object.create(adult);
child.age = 8;

delete child.age;
var prototypeAge = child.age;
