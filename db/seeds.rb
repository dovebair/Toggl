# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


main_list = ToggleList.find_or_create_by(title: "Main List")


main_list.toggle_items.find_or_create_by(content: "Push Here", style: "btn-kunzite")
main_list.toggle_items.find_or_create_by(content: "Push Here", style: "btn-ruby")