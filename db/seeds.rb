# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

10.times do 
    artists = Faker::Music.band
    bio = Faker::Quote.most_interesting_man_in_the_world
    artist = Artist.create(name: artists, bio: bio)
  5.times do
    name = Faker::BossaNova.song
    artist_name = artist.id
    genre = nil
    Song.create(name: name, artist_id: artist_name, genre_id: genre)
  end
end

