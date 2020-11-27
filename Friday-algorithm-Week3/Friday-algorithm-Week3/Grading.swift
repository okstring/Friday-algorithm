import Foundation

func grading() {
    let grades = [73, 67, 38, 33]

    grades.map { value -> Int in
        if value < 38 { return value }
        if value % 5 >= 3 {
            return value + (5 - value % 5)
        } else {
            return value
        }}
}


