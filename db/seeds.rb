# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


"Creating flats"
Flat.destroy_all
User.destroy_all


user1 = User.create!({
  name: "charles richelieu",
})

user2 = User.create!({
  name: "elodie poult",
})

user3 = User.create!({
  name: "charlotte rigueux",
})


flat1 = Flat.new ({
  name: "Flat in Venise",
  text: "passionate about old architecture and would be delighted to show you my home, which is rich in history.
  You will have a pleasant stay with your family and friends. The estate can also be booked for ceremonies",
  address: "32 Str. of Colombes",
  price: 120
})
# flat1.user = user1
flat1.save!

flat2 = Flat.new ({
  name: "Parisian Flat",
  text: "At the front of the Eiffeil Tower, full of charm",
  address: "11 boulevard Ricard",
  price: 230
})
# flat2.user = user2
flat2.save!
