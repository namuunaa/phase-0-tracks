class Santa
  def speak
    print "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    print "That was a good #{cookie_type}!" 
  end

  def initialize
    "Initializing Santa instance ..."
  end
end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("oreo")