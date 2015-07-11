//: Playground - noun: a place where people can play

import UIKit

// Control sFlow


let individualScores = [15, 87, 99, 56, 85]
var teamScore = 0
for i in individualScores {
    if i > 60 {
        teamScore += 3
    }else{
        teamScore += 1
    }
}
print(teamScore)


var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)."
    } else {
    greeting = "Hello, Louis."
}

let vegetable = "red papper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would be a nice sandwich."
case let x where x.hasSuffix("papper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largestNumber = 0
var numberKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largestNumber {
              largestNumber = number
              numberKind = kind
        }
    }
}
print("The largest number is \(largestNumber) in \(numberKind)")


var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)

var firstLoop = 0
for var i = 0; i < 4; ++i {
    firstLoop += i
}
print(firstLoop)

var secondLoop = 0
for i in 0..<4 {
    secondLoop += i
}
print(secondLoop)


var thirdLoop = 0
for i in 0...4 {
    thirdLoop += i
}
print(thirdLoop)

