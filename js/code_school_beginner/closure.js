var arr = [4, 8, 2, 1];

function sum(arr) {
	return arr.reduce(function(x, y) {
		return x + y;
	});
} 

function lazy_sum(arr) {
	var sum = function () {
		return arr.reduce(function(x, y) {
			return x + y;
		})
	};

	return sum;
}

var f = lazy_sum(arr);
alert(f());

function make_pow(n) {
	return function(x) {
		return Math.pow(x, n);
	}
}

var pow2 = make_pow(2);
var pow3 = make_pow(3);

alert(pow2(5));
alert(pow3(5));