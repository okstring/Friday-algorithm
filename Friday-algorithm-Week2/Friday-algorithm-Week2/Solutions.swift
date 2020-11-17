import Foundation

struct Solutions {
    //https://programmers.co.kr/learn/courses/30/lessons/12910
    func first(_ arr:[Int], _ divisor:Int) -> [Int] {
        let result = arr.filter({ $0 % divisor == 0 }).sorted()
        if result.isEmpty { return [-1] }
        return result
    }
    
    //https://programmers.co.kr/learn/courses/30/lessons/64061
    func second(_ board:[[Int]], _ moves:[Int]) -> Int {
       var resultArr = Array<Int>()
       var boardArr = board
       var result = Int()
       _ = moves.map { move in
           for (rowIndex, row) in boardArr.enumerated() {
               if row[move - 1] != 0 {
                   resultArr.append(boardArr[rowIndex][move - 1])
                   boardArr[rowIndex][move - 1] = 0
                   if resultArr.count >= 2 && resultArr[resultArr.count - 1] == resultArr[resultArr.count - 2] {
                       result += 2
                       resultArr.removeLast()
                       resultArr.removeLast()
                   }
                   break
               }
           }
       }
       return result
    }
    
    //https://programmers.co.kr/learn/courses/30/lessons/68644
    func third(_ numbers:[Int]) -> [Int] {
        var result = Array<Int>()
        for index in 0...numbers.count - 2 {
            for nextIndex in index + 1...numbers.count - 1 {
                if result.contains(numbers[index] + numbers[nextIndex]) {
                    continue
                }
                result.append(numbers[index] + numbers[nextIndex])
            }
        }
        return result.sorted()
    }
    
    //https://programmers.co.kr/learn/courses/30/lessons/42840
    func fourth(_ answers:[Int]) -> [Int] {
        var scores = [0, 0, 0]
        let firstSolution = [1, 2, 3, 4, 5]
        let secondSolution = [2, 1, 2, 3, 2, 4, 2, 5]
        let thirdSolution = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
        var result = Array<Int>()
        var maxScore = Int()
        for (index, answer) in answers.enumerated() {
            if index % 5 != 0 && firstSolution[index % 5] == answer {
                scores[0] += 1
            } else if index % 5 == 0 && firstSolution[0] == answer {
                scores[0] += 1
            }
            if index % 8 != 0 && secondSolution[index % 8] == answer {
                scores[1] += 1
            } else if index % 8 == 0 && secondSolution[0] == answer {
                scores[1] += 1
            }
            if index % 10 != 0 && thirdSolution[index % 10] == answer {
                scores[2] += 1
            } else if index % 10 == 0 && thirdSolution[0] == answer {
                scores[2] += 1
            }
        }
        maxScore = max(scores[0], scores[1], scores[2])
        for (index, score) in scores.enumerated() {
            if score == maxScore { result.append(index + 1) }
        }
        
        return result
    }
    
    //https://programmers.co.kr/learn/courses/30/lessons/12901
    func fifth(_ a:Int, _ b:Int) -> String {
        let lastDayArray = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        let dayArray = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
        let startDay = 5 // index
        var countDay = Int()
        if a != 1 {
            countDay = lastDayArray[0...a - 2].reduce(0, {$0 + $1} ) + b
        } else {
            countDay = b
        }
        return dayArray[(countDay + startDay - 1) % 7]
    }
    
    //https://programmers.co.kr/learn/courses/30/lessons/12928
    func sixth(_ n:Int) -> Int {
        var result = Array<Int>()
        for num in 1...n { if n % num == 0 { result.append(num) } }
        return result.reduce(0, +)
    }
}
