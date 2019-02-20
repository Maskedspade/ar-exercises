require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

surrey = create_store("Surrey", 224000, false, true)
whistler = create_store("Whistler", 1900000, true, false)
yaletown = create_store("Yaltetown", 430000, true, true)

@mens_stores = Store.where("mens_apparel = ?", true)
@mens_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end


@womens_cheap_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
@womens_cheap_stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end