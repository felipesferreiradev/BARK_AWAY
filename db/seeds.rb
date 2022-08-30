# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
felipe = User.new(full_name: "Felipe", email: "felipe@felipe.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire")
silvia = User.new(full_name: "silvia", email: "silvia@felipe.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire")
sara = User.new(full_name: "sara", email: "sara@felipe.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire")
hao = User.new(full_name: "Hao", email: "hao@felipe.com", password: "123456", city: "Berlin", dog_breed: "Yorkshire")

felipe.save!
silvia.save!
sara.save!
hao.save!

dogwalker1 = DogWalker.new(price: 10, user:felipe)
dogwalker2 = DogWalker.new(price: 5, user:silvia)
dogwalker3 = DogWalker.new(price: 8, user:sara)
dogwalker4 = DogWalker.new(price: 9, user:hao)

dogwalker1.save!
dogwalker2.save!
dogwalker3.save!
dogwalker4.save!


booking1 = Booking.new(date:Date.today, confirmed: false, dog_walker: dogwalker1, user: sara)

booking1.save!
