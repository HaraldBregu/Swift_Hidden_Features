# Swift Hidden Features
=====================================================

Hello and Welcome! 

As one of the most popular programming languages today, Swift is widely used by developers across the globe to create everything from mobile apps to server-side applications. But did you know that Swift also has a range of hidden or lesser-known features that can help you write more efficient, streamlined, and expressive code? In this post, we'll explore some of these hidden gems of the Swift programming language and show you how to use them to your advantage.

[Playground Example]()


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
