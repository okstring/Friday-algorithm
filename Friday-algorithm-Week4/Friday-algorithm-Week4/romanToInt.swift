import Foundation

func romanToInt(_ s: String) -> Int {
    let words = Array(s)
    var result = 0
    
    let pareLetter: Dictionary<String.Element, String.Element?> = [
        "I": nil,
        "V": "I",
        "L": "X",
        "D": "C",
        "M": "C",
        "C": "X",
        "X": "I"
    ]
    
    for index in stride(from: words.count - 1, through: 0, by: -1) {
        switch words[index] {
        case "I": result += 1
        case "V": result += 5
        case "X": result += 10
        case "L": result += 50
        case "C": result += 100
        case "D": result += 500
        case "M": result += 1000
        default: break
        }
        
        if let beforeLetter = pareLetter[words[index]] {
            if index != 0 && beforeLetter == words[index - 1] {
                switch beforeLetter {
                case "I": result -= 2
                case "X": result -= 20
                case "C": result -= 200
                default: break
                }
            }
        }
    }
    return result
}
