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
  def initialize
  	puts "Initializing new puppy instance..."
  end
end

#DRIVER CODE
p = Puppy.new
p.fetch("ball")
p.speak(5)
p.roll_over
p.dog_years(21)
p.high_five("Lola")

#new class design
class Blog
  def initialize
    puts "Initializing new blog instance..."
  end
  def greeting(name)
    puts "Hi #{name}, welcome to today's blog post!"
  end
  def post(quote)
    puts "Daily quote:"
    p quote
  end
end

#Blog.new.greeting
#Blog.new.post("Just do it!")
blog_list = []

50.times do
  blog_list << Blog.new
end

blog_list.each do |blog|
  blog.greeting("Lola")
  blog.post("Just do it!")
end






