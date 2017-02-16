# Virus Predictor

# I worked on this challenge [with: Parth Patel].
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# Require relative allows you to load another file that is relative 
# to the file containing the require_relative
# Require is for built in methods, will search your ruby gems for that file

require_relative 'state_data'

class VirusPredictor

  # Initializes instances of the class with given parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Combines the results of predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread 
  end

  private

  # Takes the population density data, and if the condition is met 
  # sets the number of deaths to a certain number
  #def predicted_deaths
    # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end

  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

  def predicted_deaths#(population_density, population, state)
    result = case @population_density
      when 0..49 then 0.05
      when 50..99 then 0.1
      when 100..149 then 0.2
      when 150..199 then 0.3
      else 0.4
    end
    print "#{@state} will lose #{ (@population * result).floor } people in this outbreak"
  end

=begin
  # Increment the speed of spread based on population density condition
  def speed_of_spread 
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end
=end
def speed_of_spread
  speed = 0.0
  virus_speed = case @population_density
    when 0..49 then 2.5
    when 50..99 then 2
    when 100..149 then 1.5
    when 150..199 then 1
    else 0.05
  end
  puts " and will spread across the state in #{virus_speed} months.\n\n"
  end
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |states, population_data| 
  VirusPredictor.new(states, population_data[:population_density], population_data[:population])
  .virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# - First hash is given in a string, second hash is given in symbols
# What does require_relative do? How is it different from require?
# - Require relative allows you to load another file that is relative 
#   to the file containing the require_relative
#   Require is for built in methods, will search your ruby gems for that file
# What are some ways to iterate through a hash?
# - Use a loop do with a block 
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Everytime we create a method, we don't have to set the variables as long as we defined it in the initialize method
# What concept did you most solidify in this challenge?
# - Reading a code and refactoring using other built in methods
# - Accessing a hashy hash






