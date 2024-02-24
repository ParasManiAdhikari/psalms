import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psalms/components/my_drawer.dart';
import 'package:psalms/models/playlist_provider.dart';
import 'package:psalms/models/song.dart';
import 'package:psalms/pages/song_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final dynamic playlist_provider;
  @override
  void initState(){
    super.initState();

    playlist_provider = Provider.of<PlaylistProvider>(context, listen: false);
  }
  void goToSong(int index) {
    playlist_provider.currentSongIndex = index;
    Navigator.push(context, MaterialPageRoute(builder: (context) => SongPage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("P L A Y L I S T")),
      drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(builder: (context, value, child){
        final List<Song> playlist = value.playlist;

        return ListView.builder(
          itemCount: playlist.length,
          itemBuilder: (context, index){
            final Song song = playlist[index];

            return ListTile(
              title: Text(song.songName),
              subtitle: Text(song.artistName),
              leading: Image.asset(song.albulArtImagePath),
              onTap: () => goToSong(index),
            );
          },
        );
      }),
    );
  }

}