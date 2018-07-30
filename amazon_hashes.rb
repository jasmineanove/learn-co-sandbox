total = 0
shopping_cart = {"Book" => 6.00,
                 "Blanket" => 15.00,
                 "Dress" => 24.99}
                 
shopping_cart.each do |key,value|
  puts "The #{key} costs $#{value}."
  if key == "Dress" 
    price_with_tax = (value*0.8*1.07).round(2)
  else 
    price_with_tax = (value*1.07).round(2)
  end
  puts "The #{key} costs $#{price_with_tax} (tax included)."
  total = total + price_with_tax.round(2)
end
  puts "Your total altogether is #{total.round(2)} with tax included."
  
  puts "Are you an Amazon Prime Member? (Y for yes, N for no) "
  answer = gets.strip.upcase
if answer == "Y" 
  puts "You get free shipping!"
elsif answer == "N"
  total = total + 5.00
  puts total 
else
  puts "Please enter Y for yes or N for no."
end 
  
  # price_with_tax =(value*1.07).round(2)
  # puts "The #{key} costs $#{price_with_tax} (tax included)."
  # total = total + price_with_tax.round(2)
  # puts "Your total altogether is #{total.round(2)} with tax included."