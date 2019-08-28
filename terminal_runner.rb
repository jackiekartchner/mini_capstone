require "http"
system "clear"

puts "Welcome to Jackie's Closet!"
puts "Choose a product"
puts "[1] All Products"
puts "[2] TOM Shoes"
puts "[3] Michale Kors Tote Bag"
puts "[4] Ray Bans Classic Aviators"
puts "[5] Cashmere Scarf"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/api/all_products_url")
  all_products = response.parse["All Products"]
  puts all_products
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/api/first_product_url")
  first_product = response.parse["TOM Shoes"]
  p first_product
elsif input_option == "3"
  response = HTTP.get("http://localhost:3000/api/second_product_url")
  second_product = response.parse["Michael Kors Tote Bag"]
  p second_product
elsif input_option == "4"
  response = HTTP.get("http://localhost:3000/api/third_product_url")
  third_product = response.parse["Ray Bans Classic Aviators"]
  p third_product
elsif input_option == "5"
  response = HTTP.get("http://localhost:3000/api/fourth_product_url")
  fourth_product = response.parse["Cashmere Scarf"]
  p fourth_product
    
end



