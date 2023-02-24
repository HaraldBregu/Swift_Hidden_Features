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
