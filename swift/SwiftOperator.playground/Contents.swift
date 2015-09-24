//Asignment Operator
let b = 5
var a = 10
a = b

let (x, y) = (1, 2)
x

//Arithmetic Operator
"hello " + "world"

//Reminder Operator
9 % 4
-9 % 4
8 % 2.5

//Increment and Decrement Operators
var c = 0
let d = ++c
let e = c++
let f = --c

//Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// Nil Coalesing Operator
let defaultColorName = "red"
var userDefinedColorName: String?

//userDefinedColorName = "green"
var colorNameToUse = userDefinedColorName ?? defaultColorName

//Range
for index in 1...5 {
    print("\(index) times 5 is \(index * 5).")
}

let names = ["Apple", "Google", "Yahoo", "Quora"]
let count = names.count
for i in 0..<count {
    print("Company \(i + 1) is called \(names[i])")
}

// Logical Operators
let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED!")
}
