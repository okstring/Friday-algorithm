import Foundation

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    var quotient = x
    var remainder = 0
    var reverseNum = 0
    while 0 != quotient {
        remainder = quotient % 10
        quotient = quotient / 10
        reverseNum = reverseNum * 10 + remainder
    }
    return x == reverseNum
}
