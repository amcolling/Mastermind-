require 'pry'
require './lib/colorcode'
require 'minitest/autorun'
require 'minitest/pride'

class TestColorCode < Minitest::Test
  def test_it_exists
    colorcode = ColorCode.new()
    assert_instance_of ColorCode, colorcode
  end

  def test_new_code_is_four_characters_long
    colorcode  = ColorCode.new
    assert_equal 4, colorcode.colors.length
  end

  def test_sample
    colorcode = ColorCode.new
    sample = colorcode.sample
    assert_instance_of Array, sample
    assert_equal 4, sample.length
    assert_instance_of String, sample[0]
    actual = (sample[0] == "r") || (sample[0] == "y") || (sample[0] == "b") || (sample[0] == "g")
    end


  def test_colors
    colorcode = ColorCode.new
    assert_equal ["r", "g", "b","y"], colorcode.colors
  end

  def test_check_count_elements
    colorcode = ColorCode.new
    guess = "rbyg"
    answer = ["r", "g", "b", "y"]
    assert_equal 4, colorcode.count_elements(guess, answer)
    guess = "rbb"
    assert_equal 2, colorcode.count_elements(guess, answer)
    guess = "yyyy"
    assert_equal 1, colorcode.count_elements(guess, answer)
    guess = "qzyx"
    assert_equal 1, colorcode.count_elements(guess, answer)
  end

  def test_num_correct
    colorcode =  ColorCode.new
    assert_equal 0, colorcode.num_correct
  end



end
