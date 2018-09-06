var billboard = require("billboard-top-100").getChart;
var fs = require('fs');

var songs_array = new Array();

billboard('hot-100', function(err, songs) {
    if (err) console.log(err);
    songs.forEach(function(song) {
	songs_array.push({song_title: song.title, song_artist: song.artist});
	//console.log({song_title: song.title, song_artist: song.artist});
    });
    var json = JSON.stringify(songs_array);
    console.log(songs_array);
    fs.writeFile('song_data.json', json, 'utf-8');

});

