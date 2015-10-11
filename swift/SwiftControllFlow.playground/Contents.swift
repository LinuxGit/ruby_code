//For-in
for index in 1...5 {
    print("\(index) times 5 is \(index*5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print(answer)

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs.")
}

//For
for var index = 0; index < 3; ++index {
    print("index is \(index).")
}

var index: Int
for index = 0; index < 3; ++index {
    print("index is \(index).")
}
print("The loop statements were executed \(index) times.")

//Repeat-While
let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0

repeat {
    square += board[square]
    if ++diceRoll == 7 {
        diceRoll = 1
    }
    square += diceRoll
} while square < finalSquare
print("Game Over.")


//Switch
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel.")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonent.")
default:
    print("\(someCharacter) is not a vowel or consonent.")
}

//Switch inteval matching
let approximateCount = 62
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) eggs.")

//Switch Tuples
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0,0) is on the orgin.")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis.")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis.")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box.")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside the box.")
}

//Switch Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x).")
case (0, let y):
    print("on the y-axis witn a y value of \(y).")
case let (x, y):
    print("somewhere else at (\(x), \(y)).")
}

//Switch Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y.")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y.")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point.")
}

//Early Exit
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello, \(name).")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice near \(location).")
}
greet(["name": "John"])
greet(["name": "John", "location": "Beijing"])


//Labeled Statements
gameLoop: while square != finalSquare {
    switch square + diceRoll {
    case finalSquare:
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        continue gameLoop
    default:
        square += diceRoll
        square += board[square]
    }
}
print("Game Over!")
