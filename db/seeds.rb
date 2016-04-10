# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



User.create([
    {name: "Marcos", email: "marcos@yahoo.com", password_digest: "123", image_url: "none"},
  ])

Music.create([
    {artist: "The Weeknd", song: "Next", genre: "R&B"},
  ])
