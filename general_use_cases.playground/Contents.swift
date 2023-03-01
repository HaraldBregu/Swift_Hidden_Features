import UIKit


func difference(_ nums: [Int]) -> Int {
    guard let min = nums.min(), let max = nums.max() else { return 0 }
    return max - min
}

difference([2,2,3,4,6,7])
