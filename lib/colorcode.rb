require 'pry'
class ColorCode
  attr_reader :num_correct,
              :guess


  attr_accessor :colors


  def initialize
    @colors = %W(r g b y)
    @answer = sample
    @num_correct = 0
    @guess = []

  end

  def sample
    4.times.map do
      colors.sample
    end
  end

  def count_elements(guess, answer = @answer)
    element_count = 0
  correct_array = answer.dup
      guess.chars.each do |check|
        correct_array.each_with_index do |char, index|
          if check == char
            correct_array[index] = nil
            element_count += 1
            break
          end
        end
      end
      element_count
  end


    # binding.pry
    # @guess.each_char.map(&:to_i) do
    # @colors.zip(@guess)
    # end
  end


  # guess = gets.chomp
