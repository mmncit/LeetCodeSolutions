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
    hash = Hash.new # create an empty hash
    for i in 0 .. (nums.length - 1) # generate the hash : O(n)
        hash[i] = nums[i]
    end
    hash.each_value {|value| # for each of values in hash 
        
        key = hash.key(value) # key (or index) of the value
        key_mirror = hash.key(target - value) # key of the mirror 
        if key_mirror != nil # if there is a complement present
            # there is a possiblity of duplicate value
            hash.delete(key) # delete the pair from the hash
            key_mirror = hash.key(target - value) # updated key of the mirror
            # if key_mirror is nil then the value is a mirror of itself
            return [key, key_mirror] if key_mirror # return the indices if mirror is present
        end  
    } # looping though the values O(n) * finding complementary hash O (1) = O(n) 
end # total big-Oh = O(n) + O(n) = O(n)