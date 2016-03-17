var myCounter = {
  number: 0,
  plusOne: function() {
    return this.number + 1;
  },
  isGreaterThanTen: function() {
    return this.number > 10;
  }
}

var person = {
    name: 'Louis'
}

'age' in person;
person.hasOwnProperty('name');
