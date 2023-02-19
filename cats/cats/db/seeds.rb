# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create some cats
Cat.create(name: "Fluffy", color: "Tabby", birth_date: Date.new(2015, 1, 20), sex: "M")
Cat.create(name: "Whiskers", color: "Black", birth_date: Date.new(2019, 6, 10), sex: "F")
Cat.create(name: "Mittens", color: "Calico", birth_date: Date.new(2017, 9, 1), sex: "F")
Cat.create(name: "Socks", color: "Ginger", birth_date: Date.new(2018, 4, 15), sex: "M")
