var arr = [4, 8, 2, 1];

var result = arr.sort(function(x, y){
  if(x > y) {
    return 1;
  }

  if(x < y) {
    return -1;
  }

  return 0;
});

alert(result);

arr.sort();
