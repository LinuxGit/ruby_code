//Optional Binding and use a single if statement to bind multiple values
var optionalName: String? = "Louis"
var optionalGreeting: String? = "Hello"
if let hello = optionalGreeting where hello.hasPrefix("H"), let name = optionalName {
    var greeting = "\(hello), \(name)"
}

//Range
var count = 0
for _ in 0...9 {
    count += 1
}
print(count)

//Functions
func greet(name: String, day: String) -> String {
    return "Hello, \(name), today is \(day)."
}
greet("Louis", day: "Tuesday")

//Methods are explicitly tied to the type they’re defined in
let exampleString = "hello"
if exampleString.hasSuffix("lo") {
    print("The word ends in lo.")
}

//call a method, you pass in the first argument value without writing its name, and every subsequent value with its name
var fruit = ["apple", "kiwi", "mango"]
fruit.insert("cherry", atIndex: 1)

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
print(myShape.simpleDescription())

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
print(mySquare.area())
print(mySquare.simpleDescription())

//Failable initializer
class Circle: NamedShape {
    var radius: Double
    
    init?(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        numberOfSlides = 1
        if radius <= 0 {
            return nil
        }
    }
    
    override func simpleDescription() -> String {
        return "A circle with a radius of \(radius)."
    }
}

let successfulCircle = Circle(radius: 4.2, name: "successful circle")
let failedCircle = Circle(radius: -7, name: "failed circle")

//Typing casting
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

//enumeraton
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

//enumeration raw value
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
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

//structure
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfHearts = Card(rank: .Three, suit: .Hearts)
let threeOfHeartsDescription = threeOfHearts.simpleDescription()

//protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A simple class"
    func adjust() {
        simpleDescription += " Adjusted."
    }
}
var a = SimpleClass()
a.adjust()
print(a.simpleDescription)

//Protocols are first-class types, which means they can be treated like other named types
class SimpleClass2: ExampleProtocol {
    var simpleDescription: String = "Another simple class"
    func adjust() {
        simpleDescription += " Adjusted"
    }
}

var protocolArray: [ExampleProtocol] = [SimpleClass(), SimpleClass(), SimpleClass(), SimpleClass2()]
for instance in protocolArray {
    instance.adjust()
}
protocolArray

//Swift and Cocoa Touch
import UIKit
let redSquare = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
redSquare.backgroundColor = UIColor.redColor()
