import 'package:flutter/material.dart';
import 'Jazz.dart';

class GENRES extends StatefulWidget {
  @override
  _GENRESState createState() => _GENRESState();
}

class _GENRESState extends State<GENRES> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => SoundEq(),
              //     )
              // );
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              height: 170,
              width: 300,
              child: const Text(
                'Rock',
                style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    tileMode: TileMode.mirror,
                    end: Alignment.centerLeft,
                    colors: [
                      Colors.indigo,
                      Colors.black,
                      Colors.redAccent,
                      Colors.blue
                    ]),
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            height: 170,
            width: 300,
            child: const Text(
              'Electro',
              style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    tileMode: TileMode.repeated,
                    begin: Alignment.bottomCenter,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.indigoAccent,
                      Colors.black,
                      Colors.blueAccent,
                      Colors.cyan,
                    ]),
                borderRadius: BorderRadius.circular(20)),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Jazz(),
                  ));
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              height: 170,
              width: 300,
              child: const Text(
                'Jazz',
                style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.topRight,
                    tileMode: TileMode.mirror,
                    colors: [
                      Colors.indigoAccent,
                      Colors.black,
                      Colors.deepOrangeAccent,
                      Colors.greenAccent
                    ]),
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
