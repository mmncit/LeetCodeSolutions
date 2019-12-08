"""
Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?
"""
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    current = head
    reversed = nil
    temp_reversed_list = nil # temporarily store reversed list
    while !current.nil?
        reversed = ListNode.new(current.val)    
        reversed.next = temp_reversed_list # append the previously reversed list
        temp_reversed_list = reversed # update the temp reversed list
        current = current.next # go to next node
    end
    return reversed
end