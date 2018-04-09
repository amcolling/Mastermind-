require 'pry'
class Game
  attr_reader :player,
              :guess

def initialize
  @player = player
  @guess = gets.chomp
end

def guess_too_short?
  player_guess.guess.length < 4
end

def guess_too_long?
  player_guess.guess.length > 4
end



end
