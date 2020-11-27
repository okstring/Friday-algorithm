import Foundation

// Complete the compareTriplets function below.
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result = Array(repeating: 0, count: 2)
    for (index, _) in a.enumerated() {
        if a[index] > b[index] {
            result[0] += 1
        } else if a[index] < b[index] {
            result[1] += 1
        }
    }
    return result
}
