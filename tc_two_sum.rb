require_relative "two_sum"
require 'test/unit'

class TestTwoSum < Test::Unit::TestCase

  def test_samples
    nums = [2, 2, 7, 11, 15]
    message = "Wrong Answer"
    assert_equal([0, 2], two_sum(nums, 9), message )
    assert_equal([3, 4], two_sum(nums, 26), message)
    assert_equal([0, 1], two_sum(nums, 4), message)
    assert_equal([0, 3], two_sum(nums, 13), message)
  end

end