# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DentalOffice.destroy_all
Dentist.destroy_all

list_of_offices = FactoryBot.create_list(:dental_office, rand(1..4))
list_of_offices.each do |office|
  FactoryBot.create_list(:dentist, rand(1..3), dental_office: office)
end