var a = ['A', 'B', 'C'];
var s = new Set(['A', 'B', 'C']);
var m = new Map([[1, 'x'], [2, 'y'], [3, 'z']]);

for (var x of s) {
      alert(x);
}

for (var x of a) {
      alert(x);
}

for (var x of m) {
      alert(x[0] + '=' + x[1]);
}

s.forEach(function (element) {
      alert(element);
}
)

m.forEach(function(value, key) {
      alert(key + ' : ' + value);
}
)
