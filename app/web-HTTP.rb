require "HTTP"

system "clear"

puts "enter product ID"
product_id = gets.chomp.to_i

# puts "enter product name"
# name = gets.chomp
# puts "enter price"
# price = gets.chomp.to_i
# puts "enter image_url"
# image_url = gets.chomp
# puts "enter description"
# description = gets.chomp

index = HTTP.get("http://localhost:3000/api/products")
show = HTTP.get("http://localhost:3000/api/products/#{product_id}")
create = HTTP.post("http://localhost:3000/api/products")
patch = HTTP.patch("http://localhost:3000/api/products/#{product_id}")
delete = HTTP.delete("http://localhost:3000/api/products/#{product_id}")

# products_table = TTY::Table.new ['name', 'price', 'image_url', 'description'],[[response.parse[0]["name"], [response.parse[0]["price"], [response.parse[0]["image_url"], [response.parse[0]["description"]]

# patch.parse["name"] = name
# patch.parse["price"] = price
# patch.parse["image_url"] = image_url
# patch.parse["description"] = description

p delete.parse
# puts table.render(:ascii)