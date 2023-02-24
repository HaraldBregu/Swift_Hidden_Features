import UIKit

// Fallthrough

let skill = "programmer"
var description = "My skills are: \(skill), "

switch skill {
case "programmer", "datas cientist":
    description += "developer, "
    description += "data scientist"
    fallthrough
default:
    description += " an also a computer entusiast"
}
print(description)
// Prints "My skills are: programmer, developer, data scientist an also a computer entusiast\"

// Functions with touple

func firstAndLastLetterOfMyName(string: String) -> (first: String, last: String)  {
    return (String(string.prefix(1)), String(string.suffix(1)))
}

firstAndLastLetterOfMyName(string: "Harald").first
firstAndLastLetterOfMyName(string: "Harald").last

// In-Out Parameters

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

// Closures

//There are 3 ways to use a closure
func sendCommand(callbackClosure: () -> Void) {

    // After sending command call closure
    callbackClosure()
}

sendCommand() {}

sendCommand {}

sendCommand(callbackClosure: {})

// Enums

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
