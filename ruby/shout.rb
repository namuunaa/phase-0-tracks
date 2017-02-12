module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yelling_happily(words)
    words + " OMG i'm so happy!" 
  end
end

#DRIVER CODE

p Shout.yell_angrily("Stop it")
p Shout.yelling_happily("YAAAAAAY")