//Emtpy String
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here.")
}

//Characters
let catCharacters: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacters)

for character in catString.characters {
    print(character)
}

//Concatenating Strings and Characters
var welcome = "hello"
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//Unicode Scalars
let wiseWords = "\"Imagination is more important than knowleage\"-Einstein"
let dollarSign = "\u{24}"
let sparkingHeart = "\u{1F496}"

//Characters count
var word = "cafe"
word.characters.count

//String indices
var greeting = "ruby china"
print(greeting.startIndex)
print(greeting.endIndex)
greeting[greeting.startIndex.successor()]
greeting[greeting.endIndex.predecessor()]
let index = greeting.startIndex.advancedBy(6)
greeting[index]

//String inserting and removing
greeting.insert("!", atIndex: greeting.endIndex)
greeting.insertContentsOf(" party".characters, at: greeting.endIndex.predecessor())

greeting.removeAtIndex(greeting.endIndex.predecessor())
let range = greeting.endIndex.advancedBy(-6)..<greeting.endIndex
greeting.removeRange(range)

"ruby" == "ruby"
"ruby" != "ruby"

//Prefix and Suffix
let languages = ["PHP", "Python", "Ruby", "Perl"]
var pCount = 0, yCount = 0
for language in languages {
    if language.hasPrefix("P") {
        ++pCount
    }
    if language.hasSuffix("y") {
        ++yCount
    }
}







