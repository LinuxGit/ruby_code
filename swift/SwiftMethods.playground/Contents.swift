// Instance Methods
class Counter {
    var count = 0
    func increment() {
        ++count
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(5)
print(counter.count)
counter.reset()
print(counter.count)

// Modifying Value Types from Within Instance Methods
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 1.0, y: 2.0)
somePoint.moveBy(2.0, y: 3.0)
print("somePoint is now at (\(somePoint.x), \(somePoint.y))")

// Assigning to self Within a Mutating Method
enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}

// Type Methods
struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    var currentLevel = 1
    
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    
    func completedLevel(level: Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Louis")
player.completedLevel(1)
print("Highest Unlocked Level is now \(LevelTracker.highestUnlockedLevel).")

var player2 = Player(name: "Ruby")
if player2.tracker.advanceToLevel(6) {
    print("player2 is now on level 6")
} else {
    print("Level 6 has not yet been unlocked.")
}