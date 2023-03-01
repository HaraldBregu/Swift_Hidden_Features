import UIKit

// Inserting data to an array in 3 ways
var simpleArray = ["Earth", "Moon"]
simpleArray.append("Mars")
simpleArray += ["Mercury"]
simpleArray += ["Venus", "Pluto"]

// Replacing items into array in 2 ways
simpleArray[0] = "Jupiter"
simpleArray[4...5] = ["Earth", "Saturn"]


simpleArray


// Remove duplicated items in an array with Set
var arrayWithDouplicatedItems = ["Apple", "Banana", "Kiwi", "Apple", nil]
var rem = Set(arrayWithDouplicatedItems)
