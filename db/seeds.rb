# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


5.times do
  cour = Cour.create!(name_course: Faker::Book.title)
end

15.times do
  student = Student.create!(cour_id: Random.new.rand(1..5), first_name: Faker::Company.name, last_name: Faker::Company.name)
end

