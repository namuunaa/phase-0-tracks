class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	puts "Woof!" * num
  end

  def roll_over 
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	dog_years = human_years / 7
  	puts "A #{dog_years} year old dog is basically a #{human_years} year old human being."
  end

  def high_five(person)
  	puts "Go high-five #{person}! "
  end

end



#DRIVER CODE
Puppy.new.fetch("ball")
Puppy.new.speak(5)
Puppy.new.roll_over
Puppy.new.dog_years(21)
Puppy.new.high_five("Lola")
