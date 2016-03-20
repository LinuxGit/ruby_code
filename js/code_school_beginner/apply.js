function getAge() {
  var y = new Date().getFullYear();
  return y - this.birth;
}
var person = {
  name: 'Louis',
  birth: 1990,
  age: getAge
};

alert(person.age());
alert(getAge.apply(person, []));
