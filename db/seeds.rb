# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Music.all.each do |m|
#   m.user = User.all.sample
#   m.save
# end

User.create([
    {name: "Marcos", email: "marcos@yahoo.com", password: "123", image_url: "http://ia.media-imdb.com/images/M/MV5BNDExMzIzNjk3Nl5BMl5BanBnXkFtZTcwOTE4NDU5OA@@._V1_UX214_CR0,0,214,317_AL_.jpg"},
  ])

Music.create([
    {artist: "The Weeknd", song: "The Hills", genre: "R&B", youtube_url: "https://www.youtube.com/watch?v=yzTuBuRdAyA", user_id: User.first.id },
  ])

Comment.create([
    {content: "Cool", user: User.first, music: Music.first}
  ])
