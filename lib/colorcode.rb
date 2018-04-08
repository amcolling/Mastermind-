require 'pry'
class ColorCode
  attr_reader :colors



  def initialize
    @colors = %W(r g b y)
    end

    def length
      @colors.length
    end

  def sample
    4.times.map do
      colors.sample
    end.join
  end

  # def mastermind(game)
  #   answer = game.check(["Red", "Orange", "Yellow", "Orange"])
  # end
end
