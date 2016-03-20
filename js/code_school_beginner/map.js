var add_2 = function(x) {
  return x + 2
}

var double = function(x) {
  return x * 2
}

var map = function(func, list) {
  var output = [];
  for(i in list) {
    output.push(func(list[i]));
  }
  return output;
}

var buildProcessor = function(func) {
  var process_func = function(list) {
    return map(func, list);
  }
  return process_func;
}

var process_add_2 = buildProcessor(add_2);
process_add_2([1, 2, 3])


function pow(x) {
    return x * x;
}

arr = [1, 2, 3, 4, 5];
alert(arr.map(pow));
alert(arr.map(String));

