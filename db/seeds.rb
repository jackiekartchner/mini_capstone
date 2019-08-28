# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product = Product.new(
  name: "TOMS shoes",
  price: 50,
  image_url: "https://media03.toms.com/static/www/images/product/product_image_1450x1015_Side/10002472-BLACKBLACK-CANVAS-WM-CLSC-ALPRG-S-1450x1015_newcarryover.jpg",
  description: "5 colors available, Women's Canvas Classic"
  )
product.save

product = Product.new(
  name: "Michael Kors Voyager Medium Crossgrain Leather Tote Bag",
  price: 278,
  image_url: "https://michaelkors.scene7.com/is/image/MichaelKors/30H7GV6T8L-0310_1?wid=696&hei=938&op_sharpen=1&resMode=sharp2&qlt=90",
  description: "5 colors available. Crafted from textured crossgrain leather. Gold-Tone Hardware with interior details."
  )
product.save

product = Product.new(
  name: "Ray-Ban Aviator Classic",
  price: 153,
  image_url: "https://assets.ray-ban.com/is/image/RayBan/805289004783_shad_qt?$594$",
  description: "With a classic gold frame, you can see the world through a variety of lens colors."
  )
product.save

product = Product.new(
  name: "Cashmere Scarf",
  price: 99,
  image_url: "https://n.nordstrommedia.com/id/sr3/54ae9f03-d305-45ab-b082-c4d192decb1f.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196&dpr=2",
  description: "Stay warm in a sophisticated style with a scarf made out of luxurious cashemre material."
  )
product.save