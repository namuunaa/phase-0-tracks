# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a contact route that 
# displays an address

get '/contact' do
  "Contact us @ 633 Folsom avenue, San Francisco CA 94107"
end

# /great_job route 
# take person's name as parameter 
# and say "Good job, person name!"
# if not parameter, just Good job!

get '/great_job' do
  person_name = params[:person_name]
  if person_name
    "Good job, #{params[:person_name]}!"
  else
    "Good job!"
  end
end

# route params
# add 2 numbers, give result

get '/:num_1/add/:num_2' do
  num_1 = params[:num_1].to_i
  num_2 = params[:num_2].to_i
  "#{num_1} + #{num_2} = #{num_1 + num_2}"
end


