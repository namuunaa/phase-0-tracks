#SANTACON SIMULATOR
class Santa
  attr_accessor :gender, :reindeer_ranking, :age, :ethnicity

  def initialize
    #puts "Initializing Santa instance ..."
    @gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    @ethnicity = ["black", "Latino", "white", "Japanese-African", "Native-American", "Aboriginal", "Asian", "Mystical Creature (unicorn)", "N/A"]
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

# #DRIVER CODE
# santa = Santa.new("female", "Mongolian")
# santa.speak
# santa.eat_milk_and_cookies("oreo")
# santa.celebrate_birthday
# puts "Santa turned #{santa.celebrate_birthday}"
# santa.get_mad_at("Dancer")
# puts santa.gender = "gender-fluid"
# #add diverse initializations
# santas = []
# genders = ["female", "male", "gender-fluid", "n/a"]
# ethnicities = ["white", "black", "multiracial", "hispanic"]
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end

puts "How many Santas would you like to generate?"
santa_count = gets.chomp.to_i

santa_count.times do 
  santa = Santa.new
  santa.gender = santa.gender.sample
  santa.ethnicity = santa.ethnicity.sample
  santa.age = rand(140)
  puts "Santa created is #{santa.age} years old, #{santa.gender} and of #{santa.ethnicity} decent."
  puts santa.speak
end






