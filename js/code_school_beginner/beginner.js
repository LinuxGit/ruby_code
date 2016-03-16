sentence = "I love ruby"
sentence.charAt(5)
  console.log("avg")

  for(var num=10;num>0;num--){
    console.log(num);
  }

var parkIsOpen = true;
if(parkIsOpen){
  console.log("Welcome to the Badlands National Park! Try to enjoy your stay.");
}else{
  console.log("Sorry, the Badlands are particularly bad today. We're closed!");
}


var totalGen = 19;
var totalMW = 0;
for(var currentGen = 1;currentGen <= totalGen; currentGen++){
  if(currentGen <= 4 && currentGen % 2 == 0) {
    totalMW += 62;
    console.log("Generator #" + currentGen + " is on, adding 62 MW, for a total of " + totalMW + " MW!");
  }else if(currentGen >= 5 && currentGen % 2 == 0) {
    totalMW += 124;
    console.log("Generator #" + currentGen + " is on, adding 124 MW, for a total of " + totalMW + " MW!");
  }else{
    console.log("Generator #" + currentGen + " is off.");
  }
}

alert("Alert");
confirm("Dude.Are you sure?");

function numStrings(list) {
  var count = 0;
  for(var i = 0; i < list.length; i++) {
    if(typeof(list[i]) == "string") {
      count++;
    }
  }
  return count;
}
