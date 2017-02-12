# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + " OMG i'm so happy!" 
#   end
# end

#DRIVER CODE

# p Shout.yell_angrily("Stop it")
# p Shout.yelling_happily("YAAAAAAY")

module Shout
  def yelling_happily(words)
    words*3 + "!!!"
  end
end

class Person
  include Shout
end

class Dog
  include Shout
end

#DRIVER CODE
person = Person.new
p person.yelling_happily("yaay ")

dog = Dog.new
p dog.yelling_happily("woof ")