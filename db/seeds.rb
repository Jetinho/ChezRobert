user1 = User.new
user1.email = "jean@bon.fr"
user1.first_name = "Michel"
user1.last_name = "Fernand"
user1.password = '00'
# user1.photo = File.new("agri-1.jpg")
user1.address = "Le Mollard, Sainte-Agnès"
user1.farm_description = "Ferme #{user1.last_name}"
user1.producer = true
user1.delivery = false
# user1.farm_photo_url = "ferme_du_col.jpg"
user1.save!

user2 = User.new
user2.email = "pas@bon.fr"
user2.first_name = "Alban"
user2.last_name = "Ferrand"
user2.password = '00'
# user2.photo_url = "agri-3.jpg"
user2.address = "Iffendic, France"
user2.farm_description = "Ferme #{user2.last_name}"
user2.producer = true
user2.delivery = true
user2.delivery_range = 50
user2.delivery_conditions = "Commandes de 40€ et plus"
# user2.farm_photo_url = "ferme_du_col.jpg"
user2.save!

user3 = User.new
user3.email = "tres@bon.fr"
user3.first_name = "René"
user3.last_name = "Pouillard"
user3.password = '00'
# user3.photo_url = "agri-2.jpg"
user3.address = "Moncuq, France"
user3.farm_description = "Ferme #{user3.last_name}"
user3.producer = true
user3.delivery = false
# user3.farm_photo_url = "ferme_du_col.jpg"
user3.save!

10.times do
  User.all.each do |usr|
    p = Production.new
    p.user = usr
    p.name = Production::PRODUCT.sample
    p.quantity = (10..150).to_a.sample
    p.unit = "kg"
    p.price_unit = "/kg"
    p.price = (2..15).to_a.sample
    # p.photo = "tomates.jpg"
    p.save!
  end
end
