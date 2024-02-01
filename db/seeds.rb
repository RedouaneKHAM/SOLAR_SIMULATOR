# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Solarkit.destroy_all
User.destroy_all

user1 = User.new(email: "redouane@gmail.com", password: "123456")
user1.save!

s1 = Solarkit.new(power: 525, min_production: 429, max_production: 1690, price: 18000, installation_price: 2500, image: "kit_1.png", user_id: user1.id)
s2 =Solarkit.new(power: 820, min_production: 670, max_production: 2639, price: 21000, installation_price: 2500, image: "kit_2.png", user_id: user1.id)
s3 =Solarkit.new(power: 1230, min_production: 1005, max_production: 3959, price: 32000, installation_price: 3500, image: "kit_3.png", user_id: user1.id)
s4 =Solarkit.new(power: 1640, min_production: 1339, max_production: 5279, price: 40000, installation_price: 3500, image: "kit_4.png", user_id: user1.id)
s5 =Solarkit.new(power: 3690, min_production: 3014, max_production: 11879, price: 52000, installation_price: 5500, image: "kit_5.png", user_id: user1.id)
s1.save!
s2.save!
s3.save!
s4.save!
s5.save!
