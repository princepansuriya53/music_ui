import 'package:flutter/material.dart';

class Songlist extends StatefulWidget {
  @override
  State<Songlist> createState() => _SonglistState();
}

class _SonglistState extends State<Songlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Text(
        'Please Wait Your Page Is Loading...',
        style: TextStyle(
          wordSpacing: 5,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
