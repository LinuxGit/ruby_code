function Student(name) {
	this.name = name;
	this.hello = function () {
		alert('Hello, ' + this.name + '!');
	}
}

var louis = new Student('Louis');
alert(louis.name);
louis.hello();