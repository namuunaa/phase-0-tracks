class WordGame
  attr_accessor :hidden_word, :word_to_guess, :guess_count, :letters_guessed

  def initialize(word)
    @word = word
    @word_to_guess = @word.split("")
    @hidden_word = []
    @letters_guessed = []
    @guess_count = 0
  end

  def hide_word
    @hidden_word = @word_to_guess.fill("_")
  end

  def check_letters(letter)
    if @word_to_guess.include? letter 
      @hidden_word = hidden_word.delete_at(word_to_guess.index(letter))
      @hidden_word = hidden_word.insert(word_to_guess.index(letter), letter)
     
    else
     p @hidden_word
    end
  end

  def progress(letter)
    @guess_count +=1
    if @word_to_guess.include?(letter)
      puts "Yay, you guessed a letter right."
    elsif @letters_guessed.include?(letter)
      #@guess_count -=1
      puts "We tried that letter already. Keep guessing."
    else
      puts "Try again."
    end  
  end

  def letters_guessed(letter)
    @letters_guessed << letter
  end
  def over
    if @hidden_word.join == @word
      puts "Congratulations! You guessed the word!"
    else
      puts "Sorry, you lost! The correct word was: #{@word}"
    end
  end


end


 #user interface
 puts "Welcome to word guessing game! 2 players needed to play this game."
 puts "Player 1, please enter a word you would like player 2 to guess."
 word = gets.chomp.downcase

 game = WordGame.new(word)
 p game.hide_word

 puts "Player 2, make a guess by checking one letter at a time. "
 puts "You can guess #{word.length} times"
 until game.guess_count == word.length do
   letter = gets.chomp.downcase
   game.check_letters(letter)
   game.progress(letter)
   game.letters_guessed(letter)
 end

 game.over
