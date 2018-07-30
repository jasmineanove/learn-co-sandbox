items = ["Book", "Blanket", "Dress"]
price = [6.00, 15.00, 24.99]
list_price_tax = []

price.each do |element|
  
  puts "This is item cost $#{element}." 
  price_with_tax = (element * 1.07).round(2) 
  puts "This item with tax costs $#{price_with_tax}"
  list_price_tax << price_with_tax
  puts list_price_tax
  
end 

puts list_price_tax


#use the list_price_tax Array
#iterate through the list_price_tax array using .each method
#find the total cost of all items with tax
#hint: see the counter += syntax



total = 0 
total_without_tax = 0
price = [6.00, 15.00, 24.99]
price.each do |element|
total_without_tax = total_without_tax + element
  
  price_with_tax = (element * 1.07).round(2)
  list_price_tax = []
  total = total + price_with_tax
  list_price_tax << price_with_tax
end 

puts "Total cost with tax is $#{total.round(2)}"
puts "Your total without tax is $#{total_without_tax.round(2)}"