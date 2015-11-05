// Defining Functions
func sayHello(personName: String) -> String {
    return "Hello, " + personName + "!"
}
print(sayHello("Anna"))

// Functions Without Parameters
func sayHelloWorld() -> String {
    return "Hello World."
}
print(sayHelloWorld())

// Functions with multiple parameters
func sayHello(personName: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "Hello again, \(personName)."
    } else {
        return "Hello, \(personName)."
    }
}
print(sayHello("Louis", alreadyGreeted: true))

// Functions Without Return Values
func sayGoodbye(personName: String) {
    print("Goodbye, \(personName).")
}
sayGoodbye("Louis")

// Functions with Multiple Return Values and Optional Tuple Return Types
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (min: currentMin, max: currentMax)
}

if let bounds = minMax([9, -1, 3, 7, 12]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

// Specifying External Parameter Names
func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Louis", and: "Ruby"))

// Variadic Parameters
func arithmethicMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}
print(arithmethicMean(1, 2, 3, 4, 5))

// Constant and Variable Parameters
func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
    let amountToPad = totalLength - string.characters.count
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string = padString + string
    }
    
    return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, totalLength: 10, pad: "-")

// In-Out Parameters
func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 77
var anotherInt = 9
swap(&someInt, &anotherInt)
print("Now someInt is \(someInt), anotherInt is \(anotherInt).")


// Function Types
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

// Function Types as Parameter Types
func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

// Function Types as Return Types
func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(currentValue > 0)

print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

// Nested Functions
func chooseStepFunc(backwards: Bool) -> (Int) -> Int {
    func stepFoward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backwards ? stepBackward : stepFoward
}

var currentCount = -5
let moveToZero = chooseStepFunction(currentCount > 0)
while currentCount != 0 {
    print("\(currentCount)...")
    currentCount = moveToZero(currentCount)
}

print("zero!")
