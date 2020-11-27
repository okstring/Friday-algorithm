import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for index in 0...nums.count - 2 {
        for subIndex in index + 1...nums.count - 1 {
            if nums[index] + nums[subIndex] == target {
                return [index, subIndex]
            }
        }
        
    }
    return Array<Int>()
}
