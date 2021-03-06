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
  # image_url: "https://media03.toms.com/static/www/images/product/product_image_1450x1015_Side/10002472-BLACKBLACK-CANVAS-WM-CLSC-ALPRG-S-1450x1015_newcarryover.jpg",
  description: "5 colors available, Women's Canvas Classic",
  supplier_id: 2
  )
product.save

product = Product.new(
  name: "Michael Kors Voyager Medium Crossgrain Leather Tote Bag",
  price: 278,
  # image_url: "https://michaelkors.scene7.com/is/image/MichaelKors/30H7GV6T8L-0310_1?wid=696&hei=938&op_sharpen=1&resMode=sharp2&qlt=90",
  description: "5 colors available. Crafted from textured crossgrain leather. Gold-Tone Hardware with interior details.",
  supplier_id: 2
  )
product.save

product = Product.new(
  name: "Ray-Ban Aviator Classic",
  price: 153,
  # image_url: "https://assets.ray-ban.com/is/image/RayBan/805289004783_shad_qt?$594$",
  description: "With a classic gold frame, you can see the world through a variety of lens colors.",
  supplier_id: 1
  )
product.save

product = Product.new(
  name: "Cashmere Scarf",
  price: 99,
  # image_url: "https://n.nordstrommedia.com/id/sr3/54ae9f03-d305-45ab-b082-c4d192decb1f.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196&dpr=2",
  description: "Stay warm in a sophisticated style with a scarf made out of luxurious cashemre material.",
  supplier_id: 3
  )
product.save

Supplier.create(name: "Amazon", email: "amazon@gmail.com", phone_number: "232-489-9048")
Supplier.create(name: "Nordstrom", email: "nordstrom@gmail.com", phone_number: "123-329-9048")
Supplier.create(name: "GAP", email: "gap@gmail.com", phone_number: "902-489-3458")

Image.create(url: "https://media03.toms.com/static/www/images/product/product_image_1450x1015_Side/001001B07-BLK-Black-Canvas-Womens-Classics-S-1450x1015_newcarryover.jpg", product_id: 31)
Image.create(url: "https://dimg.dillards.com/is/image/DillardsZoom/zoom/toms-mens-classic-alpargata-shoes/04532850_zi_grey.jpg", product_id: 31)
Image.create(url: "https://dimg.dillards.com/is/image/DillardsZoom/zoom/michael-michael-kors-voyager-medium-tote/05518582_zi_black_brown.jpg", product_id: 32)
Image.create(url: "https://assets.ray-ban.com/is/image/RayBan/8053672731637_shad_qt?$594$", product_id: 33)
Image.create(url: "https://n.nordstrommedia.com/id/sr3/54ae9f03-d305-45ab-b082-c4d192decb1f.jpeg?crop=pad&pad_color=FFF&format=jpeg&w=780&h=1196&dpr=2", product_id: 34)
Image.create(url: "http://www.jewelryweb.com/main/ws3017502.jpg", product_id: 6)
Image.create(url: "https://pixel.nymag.com/imgs/daily/strategist/2017/08/10/silk-pillows/Lifetime-warranty_real.w710.h473.2x.jpg", product_id: 9)


