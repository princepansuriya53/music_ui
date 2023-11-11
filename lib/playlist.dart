import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  bool _pause = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Channa_Mereya'),
            subtitle: Text('Singer:-Arjeet Sing'),
            trailing: Container(
              child: _pause == false
                  ? IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _pause = !_pause;
                            audioPlayer.play(
                                'https://pagalsong.in/uploads/systemuploads/mp3/Ae%20Dil%20Hai%20Mushkil/Channa_Mereya%20(Ae_Dil_Hai_Mushkil)_320_Kbps.mp3');
                          },
                        );
                      },
                      icon: Icon(
                        Icons.play_circle_outline_sharp,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _pause = !_pause;
                            audioPlayer.pause();
                          },
                        );
                      },
                      icon: Icon(Icons.pause_circle_filled_sharp),
                    ),
            ),
          ),
          ListTile(
            title: Text('SongName:-XYZ'),
            subtitle: Text('Singer:-Unkown'),
            trailing: Container(
              child: _pause == false
                  ? IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _pause = !_pause;
                            audioPlayer.play(
                                'https://pagalsong.in/uploads/systemuploads/mp3/Ae%20Dil%20Hai%20Mushkil/Channa_Mereya%20(Ae_Dil_Hai_Mushkil)_320_Kbps.mp3');
                          },
                        );
                      },
                      icon: Icon(
                        Icons.play_circle_outline_sharp,
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(
                          () {
                            _pause = !_pause;
                            audioPlayer.pause();
                          },
                        );
                      },
                      icon: Icon(Icons.pause_circle_filled_sharp),
                    ),
            ),
          ),
          ListTile(
            title: Text('SongName:-XYZ'),
            subtitle: Text('Singer:-Unkown'),
            trailing: Icon(Icons.play_circle_outline_sharp),
          ),
          ListTile(
            title: Text('SongName:-XYZ'),
            subtitle: Text('Singer:-Unkown'),
            trailing: Icon(Icons.play_circle_outline_sharp),
          ),
          ListTile(
            title: Text('SongName:-XYZ'),
            subtitle: Text('Singer:-Unkown'),
            trailing: Icon(Icons.play_circle_outline_sharp),
          ),
        ],
      ),
    );
  }
}

AudioPlayer audioPlayer = AudioPlayer();
