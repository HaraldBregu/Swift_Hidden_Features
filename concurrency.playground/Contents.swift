import UIKit
import PlaygroundSupport
import _Concurrency

PlaygroundPage.current.needsIndefiniteExecution = true

func showSomeResults() async -> [Int] {
    (0..<99).map { _ in .random(in: 1...20) }
}

var result = await showSomeResults()

print(result)
PlaygroundPage.current.finishExecution()

