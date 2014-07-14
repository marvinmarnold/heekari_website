# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

LightType.create!(name: "LED")
LightType.create!(name: "Incandescent")
LightType.create!(name: "CFL")

HomeType.create!(name: "House")
HomeType.create!(name: "Apartment")
HomeType.create!(name: "Dorm Room")
HomeType.create!(name: "Office")