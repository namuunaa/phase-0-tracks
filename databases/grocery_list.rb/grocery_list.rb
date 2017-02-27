# Grocery shopping list
# Create a database of shopping list items.

require 'sqlite3'

db = SQLite3::Database.new("grocery.db")

create_table_grocery = <<-SQL
  CREATE TABLE IF NOT EXISTS grocery(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT
  )
SQL

db.execute(create_table_grocery)

def add_items(db, item, quantity)
  db.execute("INSERT INTO grocery (item, quantity) VALUES (?, ?)", [item, quantity])
end

# User Interface

loop do 
  puts "what item would you like to add to your grocery cart? Type done when finished"
  grocery_item = gets.chomp

  break if grocery_item == "done"

  puts "How many do you need?"
  grocery_count = gets.chomp.to_i

  add_items(db, grocery_item, grocery_count)

end


