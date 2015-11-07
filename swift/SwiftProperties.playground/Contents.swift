// Stored Properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue

// Lazy Stored Properties
class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
print(manager.importer.fileName)

// Computed Properties
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square center is now at (\(square.origin.x), \(square.origin.y)).")

// Read-Only Computed Properties
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let box = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("The volume of box is \(box.volume).")

// Property Observers
class StepCounter {
    var totalSteps:Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps).")
        }
        
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps.")
            }
        }
    }
}

let counter = StepCounter()
counter.totalSteps = 100
counter.totalSteps = 200

// Type Property
struct SomeStructure {
    static var storedTypeProterty = "some value"
    static var computedTypeProperty: Int {
        return 2
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 3
    }
}

class SomeClass {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty: Int {
        return 9
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 110
    }
}

print(SomeStructure.storedTypeProterty)
SomeStructure.storedTypeProterty = "another value"
print(SomeStructure.storedTypeProterty)

// Querying and Setting Type Properties
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)

print(AudioChannel.maxInputLevelForAllChannels)
