//: [Previous](@previous)

import Foundation

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, num) in nums.enumerated() {
            for innerIndex in (index + 1) ..< nums.count {
                if num + nums[innerIndex] == target {
                    return [index, innerIndex]
                }
            }
        }
        return []
    }
}

Solution().twoSum([1], 1)
Solution().twoSum([1,2,5], 6)
Solution().twoSum([2,7,12,15, -2], 13)

class Solution2 {
    var valuesToIndex: [Int: Int] = [:]
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (index, num) in nums.enumerated() {
            if let requiredValueIndex = valuesToIndex[num] {
                return [requiredValueIndex, index]
            } else {
                valuesToIndex[target-num] = index
            }
        }
        return []
    }
}

Solution2().twoSum([1], 1)
Solution2().twoSum([1,2,5], 6)
Solution2().twoSum([2,7,12,15, -2], 13)
