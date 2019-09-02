require 'http'

response = HTTP.get("http://localhost:3000/api/products/3").parse
puts JSON.pretty_generate(response)

response = HTTP.post("http://localhost:3000/api/products").parse
puts JSON.pretty_generate(response)

response = HTTP.patch("http://localhost:3000/api/products/3").parse
puts JSON.pretty_generate(response)

response = HTTP.get("http://localhost:3000/api/products").parse
puts JSON.pretty_generate(response)

response = HTTP.delete("http://localhost:3000/api/products/3")
puts JSON.pretty_generate(response)








