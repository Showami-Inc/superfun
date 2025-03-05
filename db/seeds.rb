# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users = [
  { email: "taylor@showami.com", name: "Taylor", phone: "3035551234" },
  { email: "simon@showami.com", name: "Simon", phone: "3031112222" },
  { email: "chloe@showami.com", name: "Chloe", phone: "7203334444" }
]

users.each do |user|
  u = User.create(email: user[:email])
  u.create_profile(name: user[:name], phone: user[:phone])
end
