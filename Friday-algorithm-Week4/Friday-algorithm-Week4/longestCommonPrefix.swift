import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 0 { return "" }
    let minLength = strs.sorted(by: { $0.count < $1.count })[0].count
    var result = ""
    
    for strIndex in 0..<minLength {
        var tmp = ""
        for (turn, str) in strs.enumerated() {
            let index = str.index(str.startIndex, offsetBy: strIndex)
            let letter = String(str[index])
            if turn == 0 {
                tmp = letter
                continue
            }
            
            if tmp != letter {
                return result
            }
            tmp = letter
            
        }
        result += tmp
    }
    return result
}
