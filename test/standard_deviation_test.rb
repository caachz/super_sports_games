require 'minitest/autorun'
require 'minitest/pride'
require './lib/standard_deviation'

class StandardDeviationTest < Minitest::Test
  def test_it_has_ages_array
    ski = StandardDeviation.new([24, 30, 18, 20, 41])

    assert_instance_of StandardDeviation, ski
  end
end
