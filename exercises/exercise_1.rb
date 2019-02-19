require_relative '../setup'

puts "Exercise 1"
puts "----------"

def create_store name, a_r, mens, womens
  Store.create(name: name, annual_revenue: a_r, mens_apparel: mens, womens_apparel: womens)
end

burnaby = create_store("Burnaby", 300000, true, true)
richmond = create_store("Richmond", 1260000, false, true)
gastown = create_store("Gastown", 190000, true, false)

puts "Total number of stores: #{Store.count}"