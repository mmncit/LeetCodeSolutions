require_relative "../add_two_numbers"

describe 'acceptance' do

  it 'checks when one list is longer than the other' do
 
    l1 = ListNode.new(0)
    l1.next = ListNode.new(1)
    # l1 = [0, 1]   

    l2 = ListNode.new(0)
    l2.next = ListNode.new(1)
    l2.next.next = ListNode.new(2)
    # l2 = [0, 1, 2] 

    actual = add_two_numbers(l1, l2) # actual result
    expected = [0, 2, 2] # expected result
    i = 0
    while !actual.nil? # traverse through the list and verify value with expected result
        expect(actual.val).to eq(expected[i])
        actual = actual.next
        i += 1
    end
  end

  it 'checks when one list is null, which means an empty list' do
 
    l1 = nil
    # l1 = []   

    l2 = ListNode.new(0)
    l2.next = ListNode.new(1)
    # l2 = [0, 1] 

    actual = add_two_numbers(l1, l2) # actual result
    expected = [0, 1] # expected result
    i = 0
    while !actual.nil? # traverse through the list and verify value with expected result
        expect(actual.val).to eq(expected[i])
        actual = actual.next
        i += 1
    end
  end
  
  it 'checks when the sum could have an extra carry of one at the end' do
 
    l1 = ListNode.new(9)
    l1.next = ListNode.new(9)
    # l1 = [9, 9]   

    l2 = ListNode.new(1)
    # l2 = [1] 

    actual = add_two_numbers(l1, l2) # actual result
    expected = [0, 0, 1] # expected result
    i = 0
    while !actual.nil? # traverse through the list and verify value with expected result
        expect(actual.val).to eq(expected[i])
        actual = actual.next
        i += 1
    end
  end
  
end