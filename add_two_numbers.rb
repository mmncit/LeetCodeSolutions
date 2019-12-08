# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
         @val = val
         @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    sum_list = dummy_head = ListNode.new(0) # dummy head
    carry = 0

    while !l1.nil? or !l2.nil?
        l1_val = l1.nil? ? 0 : l1.val # if l1 is nil set the value as 0
        l2_val = l2.nil? ? 0 : l2.val

        # print "#{l1_val} | #{l2_val} | #{carry} \n"

        # find the digit at unit place after summation and insert into the list
        sum_list.next = ListNode.new((l1_val + l2_val + carry) % 10)

        # store the carry for the next iteration
        carry = (l1_val + l2_val + carry) / 10 

        # udpate pointer if node is present
        l1 = l1.next if l1
        l2 = l2.next if l2
        sum_list  = sum_list.next
    end
    # extra carry of one at the end
    sum_list.next = ListNode.new(carry) if carry > 0
    return dummy_head.next # return the list discarding the dummy head
end