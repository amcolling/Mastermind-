class Dialogue
  attr_reader :player

  def system
    user_input = ""
    puts "Welcome to MASTERMIND\n"
    until user_input == "q" || user_input == "quit"
      puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      user_input = gets.chomp
    if user_input == "p" || user_input == "play"
      puts "I have generated a beginner sequence with four elements made up of (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?\n>"
    elsif user_input == "i" || user_input == "instructions"
      puts "I have generated a random color sequence with the four colors, (b)lue, (g)reen, (y)ellow, and (r)ed. \nEnter your guess as bgyr, in any order, and colors can be duplicated."
    end
  end
end

  end


  def quit
  user_input == "q"
    puts "goodbye"
  end




x = Dialogue.new
p x.system
