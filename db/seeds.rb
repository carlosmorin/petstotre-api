# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{name: "Perros"}, {name: "Gatos"}])

Category.first.pets.create([
	{name: "Bulldog", status: "available", tag: "Tamaño Medio"},
	{name: "Labrador retriever", status: "available", tag: "Tamaño Grande"},
	{name: "Poodle", status: "available", tag: "Tamaño Chico"}
])


Category.second.pets.create([
	{name: "Persa", status: "available", tag: "Tamaño medio a grande"},
	{name: "Bengala", status: "available", tag: "Tamaño medio"},
	{name: "Siames", status: "available", tag: "Tamaño medio"}
])
