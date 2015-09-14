# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Group.create!(name: "Inner City Basketball")
Group.create!(name: "Uptown Tennis League")
Group.create!(name: "Snobby Rugby")
Group.create!(name: "Baseball in the Suburbs")
Group.create!(name: "Hipster Soccer")
Group.create!(name: "Nerd Chess")
Group.create!(name: "Running with Scissors")

User.create!(email: "bob@bob.com", password: "testing!", full_name: "Bob")
User.create!(email: "steve@steve.com", password: "testing!", full_name: "Steve")
User.create!(email: "ted@ted.com", password: "testing!", full_name: "Ted")
User.create!(email: "will@will.com", password: "testing!", full_name: "Will")
User.create!(email: "karen@karen.com", password: "testing!", full_name: "Karen")
User.create!(email: "sue@sue.com", password: "testing!", full_name: "Sue")
User.create!(email: "wanda@wanda.com", password: "testing!", full_name: "Wanda")

Membership.create!(group_id: , user_id:, access_level: )
