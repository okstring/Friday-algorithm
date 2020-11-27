import Foundation


func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if v1 < v2 { return "NO" }
    for index in 1...5000 {
        if v1 * index + x1 == v2 * index + x2 { return "YES" }
        if v1 * index + x1 > v2 * index + x2 { return "NO" }
    }
    return "NO"
}
