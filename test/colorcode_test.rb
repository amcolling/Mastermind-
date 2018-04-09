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
    assert_equal 0, colorcode.count_elements(guess, answer)
  end

  # def test_compare
  #   colorcode = ColorCode.new
  #   assert_equal ["r", "g", "b", "y"], colorcode.colors
  # end
  #
  # def test_answer
  #   colorcode = ColorCode.new
  #   assert_equal [], colorcode.answer
  # end

  def test_num_correct
    colorcode =  ColorCode.new
    assert_equal 0, colorcode.num_correct
  end

  def test_guess
    skip
    colorcode = ColorCode.new
    assert_equal 4, colorcode.guess("rrrr")
  end

end
# Starting a Game
# The player starts the game by running ruby mastermind.rb
# Then they see:
# Welcome to MASTERMIND
#
# Would you like to (p)lay, read the (i)nstructions, or (q)uit?
# >
# If they enter p or play then they enter the game flow described below.
# If they enter i or instructions they should be presented with a short explanation of how the game is played.
# If they enter q or quit then the game should exit
