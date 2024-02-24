import 'package:flutter/material.dart';
import 'package:psalms/models/song.dart';

class PlaylistProvider extends ChangeNotifier{
  final List<Song> _playlist =  [
    Song(
      songName: "Ungrateful",
      artistName: "Megan Thee Stallion (ft. Key Glock)",
      albulArtImagePath: "images/megan.png",
      audioPath: "audio/song.mp3"
    ),
    Song(
      songName: "500lbs",
      artistName: "Lil Tecca",
      albulArtImagePath: "images/liltecca.png",
      audioPath: "audio/song.mp3"
    ),
    Song(
      songName: "Skyfall Theme",
      artistName: "Adele",
      albulArtImagePath: "images/skyfall.png",
      audioPath: "audio/song.mp3"
    ),
  ];

  int? _currentSongIndex;

  // GETTERS
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
}