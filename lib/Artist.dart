import 'package:flutter/material.dart';

class Artist extends StatefulWidget {
  @override
  _ArtistState createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Text(
        'Please Wait Your page is Loading...',
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
