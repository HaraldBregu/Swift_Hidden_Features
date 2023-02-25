# Swift Basic & Hidden Features
=====================================================

Hello and Welcome! 

As one of the most popular programming languages today, Swift is widely used by developers across the globe to create everything from mobile apps to server-side applications. But did you know that Swift also has a range of hidden or lesser-known features that can help you write more efficient, streamlined, and expressive code? In this post, we'll explore some of these hidden gems of the Swift programming language and show you how to use them to your advantage.


Swift Basics
------------

[Playground Example](https://github.com/HaraldBregu/Swift_Hidden_Features/tree/main/swift_basics.playground)

Using semicolon when writing multiple statement in the same line.

```swift

let hello = "Hello"; print(hello); let world = "World"; print(world)
```

When working with integers swift gives the possibility to get the min and the max of each type of integer.

```swift
print(UInt8.min) // 0
print(UInt8.max) // 255
print(Int8.min) // -128
print(Int8.max) // 127
print(Int.min) // minus value
print(Int.max) // maximum value
print(UInt32.max) // 4294967295
```

Touples are a way to group multiple values
to a single compound value.

```swift
let toupleYear = (2034, "Future year")
print(toupleYear.0) // Printing first parameter
print(toupleYear.1) // Printing second parameter

let (param0, param1) = toupleYear
print(param0) // Printing first parameter
print(param1) // Printing second parameter
```

Optionals with shorter spelling to unwrap optional value

```swift
let optionalName: String? = nil
if let optionalName {
    print("My name is \(optionalName)")
}
```

Error handling

```swift
enum InfoErrors: Error {
    case wrongName
    case wrongVat
    case wrongAge
}

func insertMyName() throws -> Bool {
    throw InfoErrors.wrongName
}

do {
    try insertMyName()
} catch InfoErrors.wrongName {
    // an error was thrown
} catch InfoErrors.wrongVat {
    // an error was thrown
} catch InfoErrors.wrongAge {
    // an error was thrown
}
```
Assertions & Preconditions
Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds.

```swift
let name = "stupid"
assert(name != "stupid", "A person's name can't be unapropriate.")

let age = 18
precondition(age > 17, "Person must be adult.")
```
String and Characters

```swift
// String written in multiline
let multilineString = """
These are the same.
"""

// With wrapped quotation
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
// Three double quotation marks
let threeDoubleQuotationMarks = """
Escaping all three quotation marks \"\"\"
"""

// Three more double quotation marks
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#
```

Indices

```swift
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)] // G
greeting[greeting.index(after: greeting.startIndex)] // !
let index = greeting.index(greeting.startIndex, offsetBy: 7) // u
greeting[index]
```

Inserting and Removing

```swift
var welcome = "hello world"
welcome.insert("!", at: welcome.endIndex) // welcome now equals "hello world!"
welcome.insert(contentsOf: " whats'up", at: welcome.index(before: welcome.endIndex)) // hello world whats'up!
welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome
let range = welcome.index(welcome.endIndex, offsetBy: -15)..<welcome.endIndex
welcome.removeSubrange(range)
welcome
```
Substrings

```swift
// Substrings
let myNameAndProfession = "Harald Bregu, iOS Developer"
let index = myNameAndProfession.firstIndex(of: ",") ?? greeting.endIndex
let myNameOnly = myNameAndProfession[..<index]
myNameOnly // Harald Bregu
let newString = String(myNameOnly)
newString
```

### Colletion types

[Playground Example](https://github.com/HaraldBregu/Swift_Hidden_Features/tree/main/collection_types.playground)

Arrays

```swift
// Inserting data to an array in 3 ways
var simpleArray = ["Earth", "Moon"]
simpleArray.append("Mars")
simpleArray += ["Mercury"]
simpleArray += ["Venus", "Pluto"]

// Replacing items into array in 2 ways
simpleArray[0] = "Jupiter"
simpleArray[4...5] = ["Earth", "Saturn"]
```

Set collection type

```swift
// Remove duplicated items in an array with Set
var arrayWithDouplicatedItems = ["Apple", "Banana", "Kiwi", "Apple", nil]
var rem = Set(arrayWithDouplicatedItems)
```

### Hidden Feature 

[Playground Example](https://github.com/HaraldBregu/Swift_Hidden_Features/tree/main/hidden_features.playground)

Fallthrough

```swift
let skill = "programmer"
var description = "My skills are: \(skill), "

switch skill {
case "programmer", "datas cientist":
    description += "developer, "
    description += "data scientist"
    fallthrough
default:
    description += " and also a computer entusiast"
}
print(description)
// Prints "My skills are: programmer, developer, data scientist and also a computer entusiast\"
```

Functions with touple

```swift
func firstAndLastLetterOfMyName(string: String) -> (first: String, last: String)  {
    return (String(string.prefix(1)), String(string.suffix(1)))
}

firstAndLastLetterOfMyName(string: "Harald").first
firstAndLastLetterOfMyName(string: "Harald").last
```

In-Out Parameters

```swift
func swapTwoWords(_ a: inout String, _ b: inout String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var myName = "Bregu"
var mySurName = "Harald"
print("My full name is: \(myName) \(mySurName)")
swapTwoWords(&myName, &mySurName)
print("My full name is: \(myName) \(mySurName)")

```

Closures

```swift
//There are 3 ways to use a closure
func sendCommand(callbackClosure: () -> Void) {

    // After sending command call closure
    callbackClosure()
}

sendCommand() {}

sendCommand {}

sendCommand(callbackClosure: {})
```

Enums

```swift
// Iterable and raw value
enum Nations: String, CaseIterable {
    case italy = "IT", germany = "DE", france = "FR"
}

// Get the count of the cases
print("\(Nations.allCases.count) nations")

// Print Raw Value
print(Nations.italy.rawValue)

// Get type by raw value
let possibleNation = Nations(rawValue: "IT")
if let possibleNation {
    
    print(possibleNation)
}

// Recursive enumeration
indirect enum StarSystem {
    case planets(Int)
    case star(Int)
    case satelites(Int)
    case add(StarSystem, StarSystem)
}

let numStars = StarSystem.star(2)
let numNearPlanets = StarSystem.planets(5)
let numSatelites = StarSystem.satelites(24)
let product = StarSystem.add(numStars, StarSystem.add(numNearPlanets, numSatelites))

switch product {
case .add(let first, let second):
    print(first)
    print(second)
    break
case .planets(_): break
case .star(_): break
case .satelites(_): break
}
```

### Structures and Classes

| Features                          | Struct | Classes |
| :-------------------------------- |:------:| :-----: |
|   Define properties to store values | &check;   |  &check;   |
|   Define methods to provide functionality | &check;   |  &check;   |
|   Define subscripts to provide access to their values using subscript syntax  | &check;   |  &check;   |
|   Define initializers to set up their initial state   | &check;   |  &check;   |
|   Be extended to expand their functionality beyond a default implementation   | &check;   |  &check;   |
|   Conform to protocols to provide standard functionality of a certain kind    | &check;   |  &check;   |
|   Inheritance enables one class to inherit the characteristics of another |&cross;|&check;|
|   Type casting enables you to check and interpret the type of a class instance at runtime |&cross;|&check;|
|   Deinitializers enable an instance of a class to free up any resources it has assigned   |&cross;|&check;|
|   Reference counting allows more than one reference to a class instance  |&cross;|&check;|
 
 ### Properties
 
 There are 5 type of properties
 
 * Stored Properties
 * Lazy Stored Properties
 * Computed Properties
 * Read-Only Computed Properties
 * Property Observers
 * Property Wrappers
 
 Property Wrappers

```swift
@propertyWrapper
struct SpeedLimit {
    private var number: Int
    private var maximum: Int
    private(set) var projectedValue: String
    var wrappedValue: Int {
        get { return number }
        set {
            if newValue < 50 && newValue >= 20 {
                number = newValue
                projectedValue = "Is on urban limits speed"
            } else if newValue < 20 {
                projectedValue = "Is very slow"
                number = newValue
            }  else if newValue > maximum {
                projectedValue = "Is faster than max limit"
                number = min(newValue, maximum)
            } else {
                projectedValue = "Is very fast"
                number = newValue
            }
        }
    }
    
    init() {
        projectedValue = "Is off"
        number = 40
        maximum = 300
    }
}

struct Car {
    @SpeedLimit var speed: Int
}

var myBMWCar = Car()
print(myBMWCar.$speed) // Prints "is off"
 
myBMWCar.speed = 40
print(myBMWCar.speed) // Prints "40"
print(myBMWCar.$speed) // Prints "Is on urban limits speed"

myBMWCar.speed = 100
print(myBMWCar.speed) // Prints "100"
print(myBMWCar.$speed) // Prints "is very fast"

myBMWCar.speed = 454
print(myBMWCar.speed) // Prints "300"
print(myBMWCar.$speed) // Prints "Is faster than max limit"
```

Subscript Syntax

```swift
struct CarPower {
    let powerkw: Double
    subscript(index: Double) -> Double {
        return powerkw * index
    }
}
let carPower = CarPower(powerkw: 80)
print("CarPower in horsepower is: \(carPower[1.35962])")

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

print(Planet[4])
```

```swift
```

```swift
```

```swift
```

```swift
```

```swift
```

```swift
```
