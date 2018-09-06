require 'json'

file = File.read('song_data.json')
song_data = JSON.parse(file)
song_data.each do |song|
  Artist.create(name: song[:song_artist])
  Song.create(name: song[:song_title], artist_id: Arist.find(song[:song_artist]).id)
end
