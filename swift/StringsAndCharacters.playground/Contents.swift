//: Playground - noun: a place where people can play
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here.")
}

let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)

var welcome = "hello"
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

let wiseWords = "\"Imagination is more important than knowleage\"-Einstein"
let dollarSign = "\u{24}"
let sparkingHeart = "\u{1F496}"

var word = "cafe"
word.characters.count

var greeting = "ruby china"
print(greeting.startIndex)
print(greeting.endIndex)
greeting[greeting.startIndex.successor()]
greeting[greeting.endIndex.predecessor()]
let index = advance(greeting.startIndex, 5)
greeting[index]

greeting.insert("!", atIndex: greeting.endIndex)
greeting.removeAtIndex(welcome.endIndex.predecessor())
print(greeting)

let languages = ["PHP", "Python", "Ruby", "Perl"]
var pCount = 0
var yCount = 0
for language in languages {
    if language.hasPrefix("P") {
        ++pCount
    }
    if language.hasSuffix("y") {
        ++yCount
    }
}









