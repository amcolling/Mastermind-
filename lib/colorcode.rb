require 'pry'
class ColorCode
  attr_reader :colors,
              :answer,
              :guess,
              :num_correct



  def initialize
    @colors = %W(r g b y)
    @answer = []
    @guess = guess
    @num_correct = 0
  end

  def length
    @colors.length
  end

  def sample
    4.times.map do
      colors.sample
    end.join
  end

  def check_colors(guess)
    answer = @answer.dup.split("")
    guess.split("").each do |guess|
      if answer.include? guess
        index = answer, index (guess)
        answer[index] = nil
        num_correct +=1
      end
  end
    num_correct
  end

  guess = gets.chomp





end
