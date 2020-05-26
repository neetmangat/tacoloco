User.create!([
  {email: "neetmangat@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "cuzim2nyce@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])

Place.create!([
  {name: "Velvet Taco", description: "Craft Tacos so good", address: "3411 McKinney Ave, Dallas, TX 75204", user_id: 1, latitude: 32.8056021, longitude: -96.7988702},
  {name: "Taco Planet", description: "The best taco food truck ever", address: "1411 Westheimer Rd, Houston, TX 77006", user_id: 2, latitude: 29.7429567, longitude: -95.3962661},
  {name: "El Come Taco", description: "Random place I want to try", address: "2513 N Fitzhugh Ave, Dallas, TX 75204", user_id: 1, latitude: 32.8123356, longitude: -96.7838107},
  {name: "Fuzzy's Tacos", description: "Fuzzy Fuzzy", address: "13881 Midway Rd Suite 105, Farmers Branch, TX 75244", user_id: 2, latitude: 32.9378237, longitude: -96.8395806},
  {name: "Torchy's Tacos", description: "Tacos", address: "5921 Forest Ln #200, Dallas, TX 75230", user_id: 1, latitude: 32.9099566, longitude: -96.8058368},
  {name: "Resident Taqueria", description: "Some place I found", address: "9661 Audelia Rd #112, Dallas, TX 75238", user_id: 1, latitude: 32.8783699, longitude: -96.7187537},
  {name: "Roti Mediterranean", description: "Amazing Mediterranean Food", address: "6602 Fannin St, Houston, TX 77030", user_id: 1, latitude: 29.7096621, longitude: -95.4012496},
  {name: "Taco Bell", description: "Who can ignore the classic?!?", address: "13670 Preston Rd, Dallas, TX 75240", user_id: 2, latitude: 32.9342085, longitude: -96.803321}
])

Comment.create!([
  {message: "Love", rating: "5_stars", user_id: 2, place_id: 1},
  {message: "Seriously, it rocks", rating: "5_stars", user_id: 1, place_id: 2},
  {message: "If you haven't tried it, you need to go today", rating: "4_stars", user_id: 1, place_id: 1}
])