import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Musicdisk extends StatefulWidget {
  @override
  _MusicdiskState createState() => _MusicdiskState();
}

class _MusicdiskState extends State<Musicdisk> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  double screenhigth = 0;
  double screenwidht = 0;
  @override
  @override
  void inintState() {
    super.initState();
    setupPlaylist();
  }

  void setupPlaylist() async {
    await audioPlayer.open(
        setupPlaylist(
          audios: [
            Audio(
              "audios/s1.mp3",
              metas: Metas(
                  title: "Allha Maf akre",
                  artist: "Mohit Magukiya",
                  image: MetasImage.asset('assets/images/s1im.jpg')),
            ),
            Audio(
              "audios/s2.mp3",
              metas: Metas(
                  title: "Bas Gana Suno Or Maja Karo",
                  artist: "Darshan Pambhar",
                  image: MetasImage.asset('assets/images/3.jpg')),
            ),
            Audio(
              "audios/s3.mp3",
              metas: Metas(
                  title: "Bas Gana Suno Or Maja Karo",
                  artist: "Sagr Sar Pote",
                  image: MetasImage.asset('assets/images/2.jpg')),
            ),
            Audio("audios/s4.mp3",
                metas: Metas(
                    title: "Bas Gana Suno Or Maja Karo",
                    artist: "Abhu Patel ",
                    image: MetasImage.asset('assets/images/1.jpg'))),
          ],
        ),
        autoStart: false,
        loopMode: LoopMode.playlist);
  }

  @override
  void dispose() {
    super.initState();
    audioPlayer.dispose();
  }

  Widget audioimage(RealtimePlayingInfos realtimePlayingInfos) {
    return Container(
      height: screenhigth * 0.3,
      width: screenwidht * 0.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          realtimePlayingInfos.current!.audio.audio.metas.image!.path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget titleText(RealtimePlayingInfos realtimePlayingInfos) {
    return Text(
      realtimePlayingInfos.current!.audio.audio.metas.title!,
      style: TextStyle(
        fontSize: 40,
        color: Colors.white,
      ),
    );
  }

  Widget artisText(RealtimePlayingInfos realtimePlayingInfos) {
    return Text(
      realtimePlayingInfos.current!.audio.audio.metas.artist!,
      style: TextStyle(
        fontSize: 13,
        color: Colors.grey,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget playbar(RealtimePlayingInfos realtimePlayingInfos) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => audioPlayer.previous(),
          iconSize: screenwidht * 0.04,
          icon: Icon(Icons.skip_previous_rounded),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        IconButton(
          onPressed: () => audioPlayer.playOrPause(),
          iconSize: screenwidht * 0.08,
          icon: Icon(realtimePlayingInfos.isPlaying
              ? Icons.pause_circle_outline_sharp
              : Icons.play_circle_fill_rounded),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        IconButton(
          onPressed: () => audioPlayer.next(),
          iconSize: screenwidht * 0.04,
          icon: Icon(Icons.skip_next_sharp),
          color: Colors.white,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
      ],
    );
  }

  Widget Timetapes(RealtimePlayingInfos realtimePlayingInfos) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          transformString(realtimePlayingInfos.currentPosition.inSeconds),
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: screenwidht * 0.7,
        ),
        Text(
          transformString(realtimePlayingInfos.duration.inSeconds),
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  // Returns a string with the format mm:ss
  String transformString(int seconds) {
    String minuteString =
        '${(seconds / 60).floor() < 10 ? 0 : ''}${(seconds / 60).floor()}';
    String secondString = '${seconds % 60 < 10 ? 0 : ''}${seconds % 60}';
    return '$minuteString:$secondString';
  }

  Widget slider(RealtimePlayingInfos realtimePlayingInfos) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            height: screenhigth * 0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black38,
                  Colors.black26,
                  Colors.black12,
                  Colors.black,
                ],
                stops: [
                  0.0,
                  0.55,
                  0.55,
                  0.1,
                ],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter,
              ),
            ),
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
              trackShape: CustomeTrackShape(),
              thumbColor: Colors.white,
              activeTrackColor: Colors.redAccent,
              inactiveTrackColor: Colors.grey[800],
              overlayColor: Colors.transparent),
          child: Slider.adaptive(
            value: realtimePlayingInfos.currentPosition.inSeconds.toDouble(),
            max: realtimePlayingInfos.currentPosition.inSeconds.toDouble() + 3,
            min: -3,
            onChanged: (values) {
              if (values <= 0) {
                audioPlayer.seek(Duration(seconds: 0));
              } else if (values >= realtimePlayingInfos.duration.inSeconds) {
                audioPlayer.seek(realtimePlayingInfos.duration);
              } else {
                audioPlayer.seek(
                  Duration(
                    seconds: values.toInt(),
                  ),
                );
              }
            },
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    screenwidht = MediaQuery.of(context).size.width;
    screenhigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: audioPlayer.builderRealtimePlayingInfos(
        builder: (context, realtimePlayingInfos) {
          if (realtimePlayingInfos != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                audioimage(realtimePlayingInfos),
                SizedBox(height: screenhigth * 0.55),
                titleText(realtimePlayingInfos),
                SizedBox(height: screenhigth * 0.01),
                artisText(realtimePlayingInfos),
                SizedBox(height: screenhigth * 0.05),
                playbar(realtimePlayingInfos),
                SizedBox(height: screenhigth * 0.05),
                Timetapes(realtimePlayingInfos),
                Timetapes(realtimePlayingInfos),
              ],
            );
          } else {
            return Column();
          }
        },
      ),
    );
  }
}

class CustomeTrackShape extends RoundedRectSliderTrackShape {
  // Removes side padding of slider
  // Credit goes to @clocksmith, https://github.com/flutter/flutter/issues/37057
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
