require 'pry'
require './lib/colorcode'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'

class TestGame < Minitest::Test
  def test_it_exists
    game = Game.new
    assert_instance_of Game, game
  end

  def test_player
    game = Game.new
    assert_equal "", game.player
  end 

  def test_guess
    game = Game.new
    assert_equal gets.chomp, game.guess
  end

  def test_guess_too_short?
    game = Game.new
    assert_equal 4 , game.guess.length
  end

  def test_guess_too_long?
    game = Game.new
    assert_equal 5 , game.guess.length
  end
end
