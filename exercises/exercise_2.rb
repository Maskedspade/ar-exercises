require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)

def load_store id
  Store.find_by(id: id)
end

@store1 = load_store 1
@store2 = load_store 2

@store2.update name: 'Burnaby\'s Best'

puts "store1 is #{@store1.name}, store2 is #{@store2.name}"