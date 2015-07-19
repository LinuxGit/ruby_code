//: Playground - noun: a place where people can play

import UIKit

//optional binding
var optionalName: String? = "Louis"
var optionalGreeting: String? = "Hello"
if let hello = optionalGreeting where hello.hasPrefix("H"), let name = optionalName {
    var greeting = "\(hello), \(name)"
}

//Range
var myLoop = 0
for _ in 0...4 {
    myLoop += 1
}
print(myLoop)

//Functions
func greet(name: String, day: String) -> String {
    return "Hello, \(name), today is \(day)."
}
greet("Louis", day: "Tuesday")

//Methods
let exampleString = "hello"
if exampleString.hasSuffix("lo") {
    print("The word ends in lo.")
}

var fruit = ["apple", "kiwi", "mango"]
fruit.insert("cherry", atIndex: 1)
fruit

//Classes
class NamedShape {
    var numberOfSlides = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSlides) slides."
    }
}

let myShape = NamedShape(name: "my named shape")

//Class inherit
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSlides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let mySquare = Square(sideLength: 5.2, name: "my square")
mySquare.area()
mySquare.simpleDescription()

//type cast
class Triangle: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSlides = 3
    }
}

let shapesArray = [Triangle(sideLength: 1.5, name: "triangle1"), Triangle(sideLength: 3.2, name: "triangle2"), Triangle(sideLength: 4.2, name: "triangle3"), Square(sideLength: 2, name: "square1")]
var triangles = 0
var squares = 0
for shape in shapesArray {
    if let square = shape as? Square {
        squares++
    } else if let triangle = shape as? Triangle {
        triangles++
    }
}
print("\(squares) squares and \(triangles) triangles.")

//enum
enum CompassPoint {
    case North
    case South
    case West
    case East
}

var directionToHead = CompassPoint.West
directionToHead = .North
switch directionToHead {
case .North:
    print("Jay Head to North.")
case .South:
    print("Head to South.")
default:
    print("Head to West or East.")
}

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .King:
            return "ling lives king"
        default:
            return String(self.rawValue)
        }
    }
}

let king = Rank.King
king.rawValue
king.simpleDescription()

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

//struct
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfHearts = Card(rank: .Three, suit: .Hearts);)
let threeOfHeartsDescription = threeOfHearts.simpleDescription

//protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}

class simpleClass: ExampleProtocol {
    var simpleDescription: String = "A simple class"
    func adjust() {
        simpleDescription += " Adjusted."
    }
}
var instance = simpleClass()
instance.adjust()

let redSquare = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
redSquare.backgroundColor = UIColor.redColor()
