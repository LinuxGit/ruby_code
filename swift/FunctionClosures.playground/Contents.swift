//: Playground - noun: a place where people can play

import UIKit

func greet(name: String, lunchSpecial: String) -> String {
    return "Hello \(name), today we eat \(lunchSpecial)."
}
greet("Bob", lunchSpecial: "Sandwich")


func caclucateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statictics = caclucateStatistics([5, 3, 100, 3, 9])
print(statictics)
print(statictics.2)
print(statictics.sum)

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(2, 3, 5)


func avgOf(numbers: Int...) -> Int {
    var sum = 0
    var count = 0
    for number in numbers {
        sum += number
        count += 1
    }
    if count == 0 {
        return 0
    } else {
        return sum / count
    }
}
avgOf(1, 2, 3)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)













