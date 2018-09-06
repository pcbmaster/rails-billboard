require 'json'

file = File.read('song_data.json')
song_data = JSON.parse(file)
song_data.each do |song|
  skip = false
  Artist.all.each{ |a| skip = a.name == song["song_artist"] } 
  artist = skip ? Artist.find_by!(name: song["song_artist"]) : Artist.create(name: song["song_artist"])
  Song.create(name: song["song_title"], artist_id: artist.id)
end
