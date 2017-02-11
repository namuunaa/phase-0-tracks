class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender, :reindeer_ranking
  
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

  def celebrate_birthday
    @age = 1
  end
  
  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
  end
  #   #setter method
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  #   #getter methods
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

end

#DRIVER CODE
santa = Santa.new("female", "Mongolian")
santa.speak
santa.eat_milk_and_cookies("oreo")
santa.celebrate_birthday
puts "Santa turned #{santa.celebrate_birthday}"
santa.get_mad_at("Dancer")
puts santa.gender = "gender-fluid"
#add diverse initializations
santas = []
genders = ["female", "male", "gender-fluid", "n/a"]
ethnicities = ["white", "black", "multiracial", "hispanic"]
genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end



