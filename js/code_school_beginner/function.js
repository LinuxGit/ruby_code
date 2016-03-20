function abs(x) {
  if (arguments.length === 0) {
    return 0;
  }

  if (typeof x != 'number') {
    throw 'Not a number';
  }

  return x > 0 ? x : -x;
}

function foo(a, b, ...rest) {
  alert(a);
  alert(b);
  alert(rest);
}

foo(1, 2, 3, 4);
