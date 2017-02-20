#Program not running properly

class WordGame

  def initialize(word)
    @word = word
    @word_to_guess = @word.split("")  
    @hidden_word = "_" * @word_to_guess.length
    @letters_guessed = []
    @guess_count = 0
  end


  # check_letters method not properly swapping the "_" with correct matching letter
  # needs fixing
  def check_letters(letter)
    progress(letter)
    count = 0
    @word_to_guess.each do |char|
      if char == letter
        @hidden_word[count] = letter
      else
        @hidden_word 
      end
      count +=1 
    end
    puts @hidden_word
    @hidden_word
  end

  def progress(letter)
    if @letters_guessed.include?(letter)
      puts "We tried that letter already. Keep guessing."
      return
    elsif @word_to_guess.include?(letter)
      puts "Yay, you guessed a letter right."
    else
      puts "Try again."
    end
    letters_guessed(letter)
    @guess_count +=1
  end

  def letters_guessed(letter)   #creating an array of letters to keep track of repetitiveness
    @letters_guessed << letter
  end

  def over
    over = false
    if @hidden_word == @word 
      puts "Congratulations! You guessed the word!"
      over = true
    else
      if @guess_count == @word.length
        puts "Sorry, you lost! The correct word was: #{@word}"
        over = true
      end
    end
    over
  end

end

 #user interface
 puts "Welcome to word guessing game! 2 players needed to play this game."
 puts "Player 1, please enter a word you would like player 2 to guess."
 word = gets.chomp.downcase

 game = WordGame.new(word)

 puts "Player 2, make a guess by checking one letter at a time. "
 puts "You can guess #{word.length} times"
 until game.over do
   letter = gets.chomp.downcase
   # game.progress(letter)
   game.check_letters(letter)
 end



