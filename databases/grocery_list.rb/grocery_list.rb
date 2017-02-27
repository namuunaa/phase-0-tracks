# Grocery shopping list
# Create a dataase of shopping list items.
require 'sqlite3'

db = SQLite3::Database.new("grocery.db")

create_table_grocery = <<-SQL
  CREATE TABLE IF NOT EXISTS grocery(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT,
    price INT
  )
SQL

=begin
db.execute(create_table_grocery)

def add_items(item, quantity, price)
  db.execute("INSERT INTO grocery (item, quantity, price) VALUE (?, ?, ?)", [item, quantity, price])
end
=end