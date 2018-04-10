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
end
