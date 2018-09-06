<<<<<<< HEAD
require 'json'

@top = Topboard.create(name: "Top-100")

file = File.read('song_data.json')
song_data = JSON.parse(file)
song_data.each do |song|
  begin
    Artist.find_by!(name: song["song_artist"])
  rescue
    @artist = Artist.create(name: song["song_artist"])
  else
    @artist = Artist.find_by!(name: song["song_artist"])
  end
  Song.create(name: song["song_title"], artist_id: @artist.id, topboard_id: @top.id)
end
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

>>>>>>> fixed some view stuff
