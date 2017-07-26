# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all

[
  'Me first and the gimmie gimmies',
  'los sucios',
  'los sucios',
  'Barrabaz',
  'The Doors',
  'The Doors',
  'Lagwagon'
].each do |name|
  Artist.create name: name
end

[
  'Universal',
  'Victory',
  'Nugerte',
  'Asylum'
].each do |name|
  Label.find_or_create_by name: name
end

[
  'strung out'
  'waiting for the sun'
  'jungle disco'
  'riders of the storm'
  'choke'
  'BACALAO'
  'not me'
].each do |name|
  Album.find_or_create_by name: name
