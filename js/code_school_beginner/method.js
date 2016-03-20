var person = {
  name: 'Louis',
  birth: 1990,
  age: function() {
    var y = new Date().getFullYear();
    return y - this.birth;
  }
};

alert(person.age());
