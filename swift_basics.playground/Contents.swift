import UIKit

/* Using semicolon when writing
 multiple statement in the same line.
 */
let hello = "Hello"; print(hello); let world = "World"; print(world)

/* When working with integers swift gives the possibility
 to get the min and the max of each type of integer.
 */
print(UInt8.min) // 0
print(UInt8.max) // 255
print(Int8.min) // -128
print(Int8.max) // 127
print(Int.min) // minus value
print(Int.max) // maximum value
print(UInt32.max) // 4294967295

// This will report an error
// let tooBig: Int8 = Int8.max + 1

// Passing numbers with underscore
let exampleNumber: UInt16 = 2_0_2_3

/* Touples are a way to group multiple values
to a single compound value.
*/
let toupleYear = (2034, "Future year")
print(toupleYear.0) // Printing first parameter
print(toupleYear.1) // Printing second parameter

let (param0, param1) = toupleYear
print(param0) // Printing first parameter
print(param1) // Printing second parameter

// Optionals
// Shorter spelling to unwrap optional value
let optionalName: String? = nil
if let optionalName {
    print("My name is \(optionalName)")
}

// Error handling
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

// Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds.

// Assetions
let name = "stupid"
//assert(name != "stupid", "A person's name can't be unapropriate.")

// Use a precondition whenever a condition has the potential to be false,
// but must definitely be true for your code to continue execution.
let age = 18
precondition(age > 17, "Person must be adult.")

// Strings and Characters

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

// String indices
let greeting = "Hello!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)] // !
greeting[greeting.index(after: greeting.startIndex)] // e
greeting[greeting.index(greeting.startIndex, offsetBy: 3)] // l

// Inserting and Removing
var welcome = "hello world"
welcome.insert("!", at: welcome.endIndex) // welcome now equals "hello world!"
welcome.insert(contentsOf: " whats'up", at: welcome.index(before: welcome.endIndex)) // hello world whats'up!
welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome
let range = welcome.index(welcome.endIndex, offsetBy: -15)..<welcome.endIndex
welcome.removeSubrange(range)
welcome

// Substrings
let myNameAndProfession = "Harald Bregu, iOS Developer"
let index = myNameAndProfession.firstIndex(of: ",") ?? greeting.endIndex
let myNameOnly = myNameAndProfession[..<index]
myNameOnly // Harald Bregu
let newString = String(myNameOnly)
newString
