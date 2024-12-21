import 'package:hackathon_app/src/features/home/domain/song_model.dart';

Future<List<Song>> loadSongs() async {
  List<Song> songs = [];

  for (int i = 1; i <= 10; i++) {
    String imageUrl = "https://picsum.photos/id/$i/200/300";
    songs.add(Song(
      songName: "Song $i",
      artist: "Artist $i",
      imageUrl: imageUrl,
    ));
  }

  return songs;
}

Future<List<Song>> loadFrames() async {
  List<Song> songs = [];

  for (int i = 1; i <= 10; i++) {
    String frameUrl = "https://picsum.photos/200/300?random=$i";
    print('i -- $frameUrl');
    songs.add(Song(
      songName: "Song $i",
      artist: "Artist $i",
      imageUrl: frameUrl,
    ));
  }

  return songs;
}

// List<Song> sampleSongs = [
//   Song(
//     songName: "Blinding Lights",
//     artist: "The Weeknd",
//     imageUrl: "https://example.com/images/blinding_lights.jpg",
//   ),
//   Song(
//     songName: "Shape of You",
//     artist: "Ed Sheeran",
//     imageUrl:
//         "https://upload.wikimedia.org/wikipedia/commons/a/a6/Shape_of_You_cover.jpg",
//   ),
//   Song(
//     songName: "Levitating",
//     artist: "Dua Lipa ft. DaBaby",
//     imageUrl: "https://example.com/images/levitating.jpg",
//   ),
//   Song(
//     songName: "Peaches",
//     artist: "Justin Bieber ft. Daniel Caesar, Giveon",
//     imageUrl: "https://example.com/images/peaches.jpg",
//   ),
//   Song(
//     songName: "Stay",
//     artist: "The Kid LAROI, Justin Bieber",
//     imageUrl: "https://example.com/images/stay.jpg",
//   ),
//   Song(
//     songName: "Someone Like You",
//     artist: "Adele",
//     imageUrl: "https://example.com/images/someone_like_you.jpg",
//   ),
//   Song(
//     songName: "Happier Than Ever",
//     artist: "Billie Eilish",
//     imageUrl: "https://example.com/images/happier_than_ever.jpg",
//   ),
//   Song(
//     songName: "Industry Baby",
//     artist: "Lil Nas X, Jack Harlow",
//     imageUrl: "https://example.com/images/industry_baby.jpg",
//   ),
//   Song(
//     songName: "Drivers License",
//     artist: "Olivia Rodrigo",
//     imageUrl: "https://example.com/images/drivers_license.jpg",
//   ),
//   Song(
//     songName: "Good 4 U",
//     artist: "Olivia Rodrigo",
//     imageUrl: "https://example.com/images/good_4_u.jpg",
//   ),
// ];
