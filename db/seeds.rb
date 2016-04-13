# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "example@exam.org",
             name:  "Example User",
             password:              "password",
             password_confirmation: "password", admin: "true")
Genre.create(name: "Фантастика")
Genre.create(name: "Приключения")
Genre.create(name: "Образование")
Genre.create(name: "Детективы")
Genre.create(name: "История")
Genre.create(name: "Политика")
