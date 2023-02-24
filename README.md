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

```swift
```
