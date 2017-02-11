class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
 
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!" 
  end
end

#Driver Code
#santa = Santa.new("female", "Mongolian")
#santa.speak
#santa.eat_milk_and_cookies("oreo")
santas = []
genders = ["female", "male", "gender-fluid", "n/a"]
ethnicities = ["white", "black", "multiracial", "hispanic"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

