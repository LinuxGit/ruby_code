//Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginattempt = 0

var x = 0.0, y = 0.0, z = 0.0

var red, green, blue: Double

var 你好 = "Hello World"
print(你好)

let 🐶🐮 = "dogcow"

print("Swift", "China", terminator: " ")

//string intepolation
var name = "Louis";
print("My Name is \(name).")

//Comments
/* conments
multiline comments */

//Integer Bounds
var minValue = UInt8.min
var maxValue = UInt8.max

//Type Inference
let pi = 3 + 0.1415926

//Numeric Literals
let decimalInger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 1.25e2
let hexadecimalBouble = 0xFp2
let oneMillion = 1_000_000

//Type Alias
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

//Booleans
let i = 1
if i == 1 {
    print("i equals to 1.")
}

//Tuples
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode).")
print("The status message is \(statusMessage).")
print("The status code is \(http404Error.0).")

let http200Status = (statusCode: 200, description: "OK")
print("The status message is \(http200Status.description).")

//Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

//Forced Unwrapping
if convertedNumber != nil {
    print("Number is \(convertedNumber!).")
}

var code: Int?
if code == nil {
    print("Code is nothing.")
}

//Optional Binding
let infoNumber = "9"
if let roomNumber = Int(infoNumber) {
    print("Room number is \(roomNumber).")
} else {
    print("infoNumber could not be converted to a integer.")
}

let infoNumber2 = "99"
if var roomNum = Int(infoNumber2) {
    print("Room Num is \(roomNum).")
}

//Multiple optional bindings
if let firstNumber = Int("4"), secondNumber = Int("42")
    where firstNumber < secondNumber {
        print("\(firstNumber) < \(secondNumber).")
}

//Implicitly unwrapped optionals
let possibleString: String? = "an optional string"
let forcedString = possibleString!

let assumedString: String! = "an implicit unwrapped string"
let implicitString = assumedString

//Error Handling
func canThrowAnError() throws {
    //this function may or may not throw an error.
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

//Assertions
let age = 8
assert(age >= 0, "A person's age cannot be less than zero.")
