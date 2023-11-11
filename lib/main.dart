import 'package:flutter/material.dart';
import 'Loginpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HJ(),
    );
  }
}

class HJ extends StatefulWidget {
  @override
  State<HJ> createState() => _HJState();
}

class _HJState extends State<HJ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        child: Column(
          children: [
            Text(
              'Welcome To The Wolrd Of Music',
              style: TextStyle(
                height: 2,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Colors.white,
              ),
            ),
            Container(
              height: 450,
              child: Icon(
                Icons.play_circle_fill,
                size: 230,
                color: Colors.white,
              ),
            ),
            MaterialButton(
              animationDuration: Duration(microseconds: 1000),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Singupform(),
                  ),
                );
              },
              child: Text(
                "LET's GO",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              splashColor: Colors.red,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
        ),
      ),
    );
  }
}
