# Mystery Word Game Lab

Let's build a mystery word game in Ruby!

In Mystery word:

*   One player sets a MyStERy WoRD at the beginning of the game
*   The game shows the current mystery word, with underscores showing for each character that is still a mystery.
*   The second player guesses one letter in each round
*   If the letter is in the word, that letter is revealed in the word
*   If the letter is not in the word, the player loses one life

Here's what a game of Mystery Word should look like:

```
What is the word? Player 2 look away...
dog




The word is
___
You have 3 lives left
Guess a letter:
o
Yup, the word includes that letter!

The word is
_o_
You have 3 lives left
Guess a letter:
r
Oh no! The word doesn't include that letter!

The word is
_o_
You have 2 lives left
Guess a letter:
d
Yup, the word includes that letter!

The word is
do_
You have 2 lives left
Guess a letter:
g
Yup, the word includes that letter!
You won! The word is
dog
```

## Some technical requirements

*   Make a `MysteryWordGame` class, which takes care of the game loop
*   Make a `Word` class that is responsible for the state of the letter guesses, and displaying the current state of the mystery word

## Starter Code
You can use this starter code to guide you, or you can make up your own solution! If you make up your own solution, just make sure to follow the technical requirements.

```rb
class Word
  # Stores the provided word in an instance variable
  def initialize(word)
    # split the mystery word into an array of letters and save to an instance variable

    # map through the letters array, replacing each letter with an underscore.
    # this will represent the displayed letters save this to an instance variable.
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
  end
  
  def guessed_all_correct?
    # Check whether all letters in the word have been guessed correctly.
  end

  def output_word
    # Display the current state of the guessed word for the player.
  end
end

class MysteryWordGame
  def initialize
  # Initialize the amount of lives, the ask_for_word method, and the game loop.
  end

  def ask_for_word
  # ask the user for a mystery word and save it to an instance variable 
  end

  def game_loop
    # Run the game loop until the player wins or loses.
    loop do
      # show the current output of the word
      
      # inform the user how many lives they have left

      # ask the user to guess a letter and save their guess to a local variable

      # (BONUS) Check whether a provided character is a letter
      # (BONUS) check and  ensure the user only entered one letter    

      # use the .guess?(letter) method to check if the user's guess was correct
      # save the result to an instance variable

      # if the guess was wrong, the player loses a life

      # if the player runs out of lives, tell them they lose and end the loop with "break"

      # if the player guessed all the letters correctly,
      # tell them they win and end the loop with "break"
    end
  end
end

MysteryWordGame.new
```

## Bonus

*   Validate the user's input. If the user enters a non-alphabetical character, ask them to.
*   If the user enters more than one letter at a time, tell them that's not okay.
