require_relative "../two_sum_hash"

describe 'acceptance' do

  let(:nums) { [2, 2, 7, 11, 15] }
  let(:another_nums) {[3, 2, 4]}
  
  it 'checks indices of the two numbers such that they add up to a specific target' do
    
    expect(two_sum(nums, 9)).to match_array([0, 2])
    expect(two_sum(nums, 26)).to match_array([3, 4])
    expect(two_sum(nums, 13)).to match_array([0, 3])
    
  end
  
  it 'checks when specific target is the summation of duplicate numbers' do
    expect(two_sum(nums, 4)).to match_array([0, 1])
  end

  it 'checks when the value = target - value or the value is its mirror itself' do
    expect(two_sum(another_nums, 6)).to match_array([1, 2])
  end
end