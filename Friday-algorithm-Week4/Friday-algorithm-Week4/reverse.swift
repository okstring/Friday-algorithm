import Foundation

func reverse(_ x: Int) -> Int {
    var result = 0
    if x > 0 {
        result = Int(String(describing: x).compactMap { String($0) }.reversed().joined()) ?? 0
    } else {
        result = -(Int(String(describing: x).compactMap { String($0) }.reversed().dropLast().joined()) ?? 0)
    }
    return result > Int32.max || result < Int32.min ? 0 : result
}
