"""
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
"""

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    # loop through the elements in the array
    for i in 0 .. (nums.length - 1)
        # rest of the array excluding the previously checked elements
        subnums = nums[i+1 .. nums.length]
        # puts "#{subnums}"
        # check if the mirror (= target - current value) is present in the rest of the array
        if subnums.index(target - nums[i]) != nil
            # return the current index and the index of the mirror in the given array  
            return [i, subnums.index(target - nums[i]) + i + 1] # offsetting the index
        end
    end
end

"""
unit tests are written in tc_two_sum.rb
Note: complexity is: O(n^2). Hmm, there is a scope to improve..
"""