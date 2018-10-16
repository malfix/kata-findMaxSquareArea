require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'base example ' do
    assert_equal 4, Exercise.new.find([[1, 0, 0, 0],
     [1, 0, 1, 1],
     [1, 0, 1, 1],
     [0, 1, 0, 0]])
  end
end
