
Supplier.create([
  {
    name: "Amazon-mini",
    email: "amazonmini@gmail.com",
    phone_number: "23423-234234"
  },
  {
    name: "Dunder Mifflin",
    email: "dundermifflin@gmail.com",
    phone_number: "234-23423423"
  },
  {
    name: "ABC",
    email: "abc@gmail.com",
    phone_number: "234234-23423"
  },
  {
    name: "TheSupplier",
    email: "thesupplier@gmail.com",
    phone_number: "2342-2342342"
  }
])

Product.create([
  {
    name: "football",
    price: 8.00,
    description: "classic nfl football",
    stock: true,
    supplier_id: 3
  },
  {
    name: "legend of zelda",
    price: 50,
    description: "vintage N64 video game",
    stock: true,
    supplier_id: 1
  },
  {
    name: "soccer ball",
    price: 15.00,
    description: "classic mls soccer ball",
    stock: true,
    supplier_id: 3
  },
  {
    name: "squirt gun",
    price: 20.00,
    description: "deadly and safe water gun",
    stock: true,
    supplier_id: 3
  },
  {
    name: "sword",
    price: 6.00,
    description: "long and pointy",
    stock: true,
    supplier_id: 4
  },
])





Image.create([
  {
    name: "football",
    url: "https://www.profootballhof.com/assets/1/6/NFLSchedule1050Web.jpg",
    product_id: 1
  },
  {
    name: "legend of zelda",
    url: "https://media.gamestop.com/i/gamestop/10148929/The-Legend-of-Zelda-Ocarina-of-Time",
    product_id: 2
  },
  {
    name: "soccerball",
    url: "https://www.bgcdorchester.org/wp-content/uploads/2016/05/product-soccer-ball.jpg",
    product_id: 3
  },
  {
    name: "squirt gun",
    url: "https://images-na.ssl-images-amazon.com/images/I/41WOOu0bZzL._AC_SX425_.jpg",
    product_id: 4
  },
  {
    name: "sword",
    url: "https://www.darksword-armory.com/wp-content/uploads/2014/09/Medieval-knight-sword.jpg",
    product_id: 5
  },
  
])
