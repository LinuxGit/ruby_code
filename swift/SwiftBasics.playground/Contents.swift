//: Playground - noun: a place where people can play

var 你好 = "Hello World"
print(你好)

//Numeric Type
var minValue = UInt8.min
var maxValue = UInt8.max

let pi = 3 + 0.1415926
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11
let decimalDouble = 1.25e2
let oneMillion = 1_000_000

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

//Implicitly unwrapped optionals
let possibleString: String? = "an optional string"
let forcedString = possibleString!

let assumedString: String! = "an implicit unwrapped string"
let implicitString = assumedString

//Assertions
let age = 5
assert(age >= 0, "A person's age cannot be less than zero.")







