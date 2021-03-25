# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all

user1 = User.new(first_name: "Abe", last_name: "Banner", password: "asdf", email: "a.banner@asdf.com")
user2 = User.new(first_name: "Isaac", last_name: "Fran", password: "asdf", email: "i.fran@asdf.com")
project1 = Project.new(name: "Project 1", description: "Blah blah blah", user: user1)
task1 = Task.new(name: "Task 1", description: "tasktasktask", status: "In Progress", project: project1)
task2 = Task.new(name: "Task 2", description: "asdfasdfasdf", status: "In Progress", project: project1)
task3 = Task.new(name: "Task 3", description: "lalalalala", status: "In Progress", project: project1)

puts "Done"