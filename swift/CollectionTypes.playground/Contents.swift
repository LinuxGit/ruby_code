//Empty Array
var someInts = [Int]()
someInts.append(3)

var threeDoubles = [Double](count: 3, repeatedValue: 0.1)

var shoppingList :[String] = ["Milk", "Egg"]

shoppingList.isEmpty

//Array type inference
var linuxDestro = ["CentOS", "RedHat"]


//Modifing an Array
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]

shoppingList[0] = "Six eggs"
shoppingList

shoppingList[1...3] = ["Apple", "Bananas"]
shoppingList

shoppingList.insert("Maple Syrup", atIndex: 0)
shoppingList.removeAtIndex(0)
shoppingList.removeLast()
shoppingList

//Iterating Over an Array
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerate() {
    print("Item \(index + 1): \(value)")
}

//Emtpy Set
var letters = Set<Character>()

//Accessing and Modifing a Set
var favoriteGenres: Set = ["Rock", "Classical", "Hip pop"]
favoriteGenres.insert("Jazz")
favoriteGenres.count
favoriteGenres.isEmpty

favoriteGenres.remove("Rock")
favoriteGenres.contains("Funk")

//Iterating Over a Set
for genre in favoriteGenres {
    print("\(genre)")
}

for genre in favoriteGenres.sort() {
    print("\(genre)")
}

//Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigits: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()
oddDigits.intersect(singleDigits).sort()
oddDigits.subtract(singleDigits).sort()
oddDigits.exclusiveOr(singleDigits).sort()

let staticLangs: Set = ["C", "C++", "Java"]
let scriptLangs: Set = ["Python", "Ruby"]
let topLangs: Set = ["C", "Swift", "Ruby", "Python", "Java"]

scriptLangs.isSubsetOf(topLangs)
scriptLangs.isStrictSubsetOf(topLangs)
staticLangs.isDisjointWith(scriptLangs)
topLangs.isSupersetOf(scriptLangs)

//Emtpy Dictionary
var nameOfIntegers = [Int: String]()
nameOfIntegers[6] = "six"
nameOfIntegers = [:]

//Dictionary Literal
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports.count

//Iterating Over a dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

//Remove a key-value pair
airports["LHR"] = nil
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("\(oldValue)")
}

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

if let removedValue = airports.removeValueForKey("DUB") {
    print("The Remove airport's name is \(removedValue).")
}
