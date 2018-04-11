require 'pry'
require './lib/colorcode'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dialogue'

class TestDialogue < Minitest::Test
  def test_it_exists
    dialogue = Dialogue.new()
    assert_instance_of Dialogue, dialogue
  end

  def test_menu_system
    dialogue = Dialogue.new
    expected = "Welcome to MASTERMIND"
    assert_equal expected, dialogue.system
  end

  def test_play 
    dialogue = Dialogue.new
    expected = "I have generated a beginner sequence with four elements made up of (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?\n>"
 assert_equal expected, dialogue.instructions
  end
end
