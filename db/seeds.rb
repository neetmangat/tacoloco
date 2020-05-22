 User.create!([
  {email: "neetmangat@gmail.com", password: "trial1", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "cuzim2nyce@gmail.com", password: "trial1", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
 ])
Place.create!([
  {name: "Velvet Taco", description: "Craft Tacos so good", address: "3411 McKinney Ave, Dallas, TX 75204", user_id: 1},
  {name: "Taco Planet", description: "The best taco food truck ever", address: "1411 Westheimer Rd, Houston, TX 77006", user_id: 1},
  {name: "Resident Taqueria", description: "Some place I found", address: "9661 Audelia Rd #112, Dallas, TX 75238", user_id: 1},
  {name: "El Come Taco", description: "Random place I want to try", address: "2513 N Fitzhugh Ave, Dallas, TX 75204", user_id: 1},
  {name: "Fuzzy's Tacos", description: "Fuzzy Fuzzy", address: "13881 Midway Rd Suite 105, Farmers Branch, TX 75244", user_id: 1},
  {name: "New Place 1", description: "New", address: "New Place 1", user_id: 1},
  {name: "Torchy's Tacos", description: "Tacos", address: "5921 Forest Ln #200, Dallas, TX 75230", user_id: 1},
  {name: "Taco Paco", description: "Loco Taco", address: "Paco Loco", user_id: 1},
  {name: "Tacos Galore", description: "I love these tacos!", address: "Taco Street", user_id: 2}
])
