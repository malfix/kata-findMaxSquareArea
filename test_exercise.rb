require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'vertical ' do
    assert_equal 4, Exercise.new.find([
      [1, 0, 0, 0],
      [1, 0, 1, 1],
      [1, 0, 1, 1],
      [0, 1, 0, 0]])
  end

  test 'simple square ' do
    assert_equal 4, Exercise.new.find([
      [1, 0, 0, 0],
      [1, 0, 1, 1],
      [1, 0, 1, 1],
      [0, 1, 0, 0]])
  end

  test 'horizontal ' do
    assert_equal 3, Exercise.new.find([
      [0, 0, 0, 0],
      [1, 0, 1, 1],
      [1, 0, 0, 0],
      [0, 1, 1, 1]])
  end

  test 'horizontal rectangle' do
    assert_equal 8, Exercise.new.find([
      [0, 1, 1, 0],
      [1, 1, 1, 1],
      [1, 1, 1, 1],
      [0, 1, 0, 0]])
  end

  test 'vertical rectangle' do
    assert_equal 6, Exercise.new.find([
      [0, 1, 1, 0],
      [1, 1, 1, 1],
      [0, 1, 1, 0],
      [0, 1, 0, 0]])
  end

  test 'inner square' do
    assert_equal 9, Exercise.new.find([
      [1, 1, 0, 1, 0],
      [1, 1, 1, 1, 1],
      [0, 1, 1, 1, 0],
      [1, 1, 1, 1, 1],
      [1, 1, 0, 1, 1]])
  end

  test 'one dot' do
    assert_equal 1, Exercise.new.find([
      [1, 0],
      [0, 1]])
  end
end
