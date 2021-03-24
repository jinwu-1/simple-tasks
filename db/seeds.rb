# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.new(first_name: "Abe", last_name: "Banner", password: "asdf", email: "a.banner@asdf.com")
User.new(first_name: "Isaac", last_name: "Fran", password: "asdf", email: "i.fran@asdf.com")