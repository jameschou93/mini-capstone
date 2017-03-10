CartedProduct.create!([
  {user_id: 11, product_id: 13, quantity: 3, status: "purchased", order_id: 11},
  {user_id: 11, product_id: 10, quantity: 5, status: "purchased", order_id: 11},
  {user_id: 11, product_id: 12, quantity: 2, status: "purchased", order_id: 11},
  {user_id: 11, product_id: 10, quantity: 3, status: "purchased", order_id: 12},
  {user_id: 11, product_id: 3, quantity: 15, status: "purchased", order_id: 13},
  {user_id: 11, product_id: 4, quantity: 2, status: "purchased", order_id: 13},
  {user_id: 11, product_id: 4, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 11, product_id: 10, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 11, product_id: 13, quantity: 1, status: "purchased", order_id: 14},
  {user_id: 11, product_id: 13, quantity: 45, status: "removed", order_id: nil},
  {user_id: 11, product_id: 10, quantity: 1, status: "carted", order_id: nil},
  {user_id: 11, product_id: 4, quantity: 1, status: "removed", order_id: nil},
  {user_id: 1, product_id: 13, quantity: 1, status: "purchased", order_id: 15},
  {user_id: 1, product_id: 10, quantity: 1, status: "carted", order_id: nil},
  {user_id: 1, product_id: 4, quantity: 1, status: "carted", order_id: nil}
])
Category.create!([
  {name: "family"},
  {name: "classic"},
  {name: "strategy"},
  {name: "card game"}
])
Image.create!([
  {url: "https://play-risk-online.net/wp-content/uploads/2016/04/risk1.jpg", product_id: 3},
  {url: "https://images-na.ssl-images-amazon.com/images/I/71G5I9ftIAL._SY355_.jpg", product_id: 10},
  {url: "https://cf.geekdo-images.com/images/pic2419375_md.jpg", product_id: 1},
  {url: "http://i.somethingawful.com/inserts/articlepics/photoshop/09-10-04-boardgames/Quickpull.jpg", product_id: 13},
  {url: "https://cf.geekdo-images.com/images/pic2691976.png", product_id: 4},
  {url: "http://cf.geekdo-images.com/images/pic1175306_lg.jpg", product_id: 12},
  {url: "http://crooksandliars.com/files/imagecache/node_primary/primary_image/16/10/angry_trump_0.jpg", product_id: 12},
  {url: "http://www.tinysci.com/images/IMG_1280.jpg", product_id: 1},
  {url: "http://blog.gamesparadise.com.au/wp-content/uploads/2011/04/munchkin.jpg", product_id: 14},
  {url: nil, product_id: 4}
])
Order.create!([
  {user_id: 1, subtotal: "40.0", tax: "3.6", total: "43.6"},
  {user_id: 1, subtotal: "30.0", tax: "2.7", total: "32.7"},
  {user_id: 1, subtotal: "150.0", tax: "13.5", total: "163.5"},
  {user_id: 11, subtotal: "40.0", tax: "3.6", total: "43.6"},
  {user_id: 11, subtotal: "250.0", tax: "22.5", total: "272.5"},
  {user_id: 1, subtotal: "24.0", tax: "3.0", total: "27.0"},
  {user_id: 1, subtotal: "26.0", tax: "3.0", total: "29.0"},
  {user_id: 1, subtotal: "20.0", tax: "3.0", total: "23.0"},
  {user_id: 1, subtotal: "23.0", tax: "3.0", total: "26.0"},
  {user_id: 1, subtotal: "25.0", tax: "3.0", total: "28.0"},
  {user_id: 11, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 11, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 11, subtotal: "280.0", tax: "25.2", total: "305.2"},
  {user_id: 11, subtotal: "260.0", tax: "23.4", total: "283.4"},
  {user_id: 1, subtotal: "200.0", tax: "18.0", total: "218.0"}
])
Product.create!([
  {game_name: "Jenga", player_min: "1", player_max: "8", time: "5", age_limit: "1", price: "10.0", description: nil, supplier_id: 2},
  {game_name: "Hat Fetish", player_min: "2", player_max: "6", time: "20", age_limit: "4", price: "200.0", description: nil, supplier_id: 2},
  {game_name: "Risk", player_min: "2", player_max: "6", time: "60", age_limit: "10", price: "12.0", description: nil, supplier_id: 1},
  {game_name: "Catan", player_min: "2", player_max: "4", time: "25", age_limit: "11", price: "2.0", description: nil, supplier_id: 1},
  {game_name: "Trump the game", player_min: "1", player_max: "1", time: "4 years", age_limit: "80", price: "50.0", description: nil, supplier_id: 1},
  {game_name: "Munchkins", player_min: "2", player_max: "6", time: "60", age_limit: "12", price: "60.0", description: "Kill Monsters, steal from friends, break friendships", supplier_id: 3},
  {game_name: "Exploding Kittens", player_min: "2", player_max: "3", time: "15", age_limit: "8", price: "50.0", description: "EXPLODing CATS ALL DAY", supplier_id: 3}
])
ProductCategory.create!([
  {product_id: 4, category_id: 2},
  {product_id: 4, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 4},
  {product_id: 10, category_id: 3},
  {product_id: 12, category_id: 4},
  {product_id: 12, category_id: 2},
  {product_id: 13, category_id: 2}
])
Supplier.create!([
  {name: "Game City", email: "rec@gamec.net", phone: "222-111-3333"},
  {name: "Nintendo", email: "support@nintendo.com", phone: "999-111-9910"},
  {name: "Mad Dog", email: "help@maddog.org", phone: "090-222-1452"}
])
User.create!([
  {name: "liono", email: "lion@cat.com", password_digest: "$2a$10$/qRyZdOMP.l2Sq.HAaF3r.Gjvoxon/3XEE/HwyoyYPIyDOtU1eAKW", admin: true},
  {name: "leo", email: "leo@cats.com", password_digest: "$2a$10$VLC6DHYZdJYgOofjYxDgNejfOQLaPV8io7nKSMR10oX9/CdL5ehCq", admin: true},
  {name: "james", email: "james@mail.com", password_digest: "$2a$10$4FqKbE25Ty8jWVSfR801C.vQ1gyC5oN3E/TzzFWw4Sgbith120aby", admin: false},
  {name: "edwin", email: "tranceforms@mail.com", password_digest: "$2a$10$rgpzB8Xys96EmVN7wPyt/OtjPrrYTK.KBJya2mpFKNSTC4u8Y1fz2", admin: false}
])
