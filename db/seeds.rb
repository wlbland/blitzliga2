# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

if Rails.env.development?

  puts "creating teams"
  red_star = Team.create(name: "Red Star")
  the_unsanctionables = Team.create(name: "The Unsanctionables")
  the_galactics = Team.create(name: "The Galactics")
  coalition = Team.create(name: "Coalition")
  cavalry = Team.create(name: "Cavalry")
  happy_sundays = Team.create(name: "Happy Sundays")
  freshmen = Team.create(name: "Freshmen")
  moscow_rebels = Team.create(name: "Moscow Rebels")

  puts "creating users"
  administrator= User.create(email: "a@admin.com", password: "A5646545**v", password_confirmation: "A5646545**v", admin: true)

  captain_red_star = User.create(email: "star@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v", team: red_star)

  captain_the_unsanctionables = User.create(email: "unsanctionables@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v", team: the_unsanctionables)

  captain_the_galactics = User.create(email: "galactics@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v", team: the_galactics)

  captain_coalition = User.create(email: "coalition@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v")

  captain_cavalry = User.create(email: "cavalry@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v")

  captain_happy_sundays = User.create(email: "happysundays@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v")

  captain_captain_freshmen = User.create(email: "freshmen@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v")

  captain_moscow_rebels = User.create(email: "moscowRebels@gmail.com", password: "A5646545**v", password_confirmation: "A5646545**v")


end

