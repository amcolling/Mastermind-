class Dialogue
  attr_reader :player

  def system
    user_input = ""
    puts "Welcome to MASTERMIND\n"
    puts 		puts "  __  __            _                     _           _
|  \\/  | __ _  ___| |_  ___  _ _  _ __  (_) _ _   __| |
| |\\/| |/ _` |(_-<|  _|/ -_)| '_|| '  \\ | || ' \\ / _` |
|_|  |_|\\__,_|/__/ \\__|\\___||_|  |_|_|_||_||_||_|\\__,_|"
    until user_input == "q" || user_input == "quit"
      puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
      user_input = gets.chomp
    if user_input == "p" || user_input == "play"
      puts "I have generated a beginner sequence with four elements made up of (r)ed,
      (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game. What's your guess?\n>"
    elsif user_input == "i" || user_input == "instructions"
      puts "I have generated a random color sequence with the four colors, (b)lue, (g)reen, (y)ellow, and (r)ed. Enter your guess as bgyr, in any order, and colors can be duplicated."
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
