class Word
  # Stores the provided word in an instance variable
  def initialize(word)
    # split the mystery word into an array of letters and save to an instance variable
    @word = word.split("")
    # map through the letters array, replacing each letter with an underscore.
    # this will represent the displayed letters save this to an instance variable.
    @hidden_word = @word.map { |letter| letter = "_" }.join("")
  end
  
  def guess?(letter)
    # use conditional logic to check whether 
    # the array of letters includes the guessed letter.
    # if it does, inform the user that they were right
    # and this .guess? method should return true. 
    # if not, inform the user that they're wrong
    # and have the .guess? method return false.
    # loop through the letters array with index. 
    # if the guessed letter matches a character, 
    # replace the underscore at that index with the guessed letter.
    # *** REMINDER: ? methods must return a boolean ***
    if @word.include?(letter)
      puts "Lucky guess! The word includes the letter '#{letter}'!"
      @word.length.times do |i|
        if letter == @word[i]
          @hidden_word[i] = letter
        end
      end
      return true
    else
      puts "Tough luck! The word does not include the letter '#{letter}'."
      return false
    end
  end
  
  def guessed_all_correct?
    # Check whether all letters in the word have been guessed correctly.
    !@hidden_word.include?('_')
  end

  def correct_word
    return @word.join("")
  end

  def output_word
    # Display the current state of the guessed word for the player.
    puts @hidden_word
  end
end

class MysteryWordGame
  def initialize
  # Initialize the amount of lives, the ask_for_word method, and the game loop.
    @lives = 5
    @user_word = ''
    ask_for_word
    game_loop
  end

  def ask_for_word
  # ask the user for a mystery word and save it to an instance variable 
    puts "Please enter a word to guess"
    @user_word = Word.new(gets.chomp)
    system("clear")
  end

  def game_loop
    # Run the game loop until the player wins or loses.
    loop do
      # show the current output of the word
      puts "The word is:"
      @user_word.output_word
      # inform the user how many lives they have left
      if @lives == 1
        puts "Careful! You have only #{@lives} life left."
      else
        puts "You have #{@lives} lives left."
      end
      # ask the user to guess a letter and save their guess to a local variable
      puts "Guess a letter."
      guessCorrect = @user_word.guess?(gets.chomp)
      # (BONUS) Check whether a provided character is a letter
      # (BONUS) check and  ensure the user only entered one letter    

      # use the .guess?(letter) method to check if the user's guess was correct
      # save the result to an instance variable

      # if the guess was wrong, the player loses a life
      # if the player runs out of lives, tell them they lose and end the loop with "break"
      if !guessCorrect
        @lives -= 1
        if @lives == 0
          puts "You ran out of lives and lost the game!"
          puts "For your information, '#{@user_word.correct_word}' was the correct word."
          break
        end
      end
      # if the player guessed all the letters correctly,
      # tell them they win and end the loop with "break"
      if @user_word.guessed_all_correct?
        puts "You successfully guessed the word! You win!"
        break
      end
    end
  end
end

MysteryWordGame.new