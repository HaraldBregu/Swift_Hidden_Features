import UIKit

func findIndex<T: Equatable>(of valueToFind: T, in array: [T]) -> Int? {
    return array.firstIndex(of: valueToFind)
}

let doubleIndex = findIndex(of: 9.3, in: [3.14159, 0.1, 0.25])

let stringIndex = findIndex(of: "Andrea", in: ["Mike", "Malcolm", "Andrea"])
