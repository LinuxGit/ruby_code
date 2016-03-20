var person = {
	name: 'Louis',
	birth: 1990,
	getAge: function() {
		var fn = () => new Date().getFullYear() - this.birth;
		return fn();
	}
};

alert(person.getAge());