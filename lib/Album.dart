import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  List homepage = [
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Ram Dhun',
      subtitle: 'Prince Pansuriya',
    ),
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Swaminarayn Dhun',
      subtitle: 'Darshan Pambhar',
    ),
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Mahdev Arti',
      subtitle: 'Mohit Mangukiya',
    ),
    Homepage(
      image: 'assets/musicthub.jpg',
      title: 'Dance India dance',
      subtitle: 'Abhay Pattel',
    ),
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Tu Ta huva Pyar hu me.....',
      subtitle: 'SagrSar',
    ),
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Kundii Laga de saya....',
      subtitle: 'Rutvik MRP',
    ),
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Ram Dhun',
      subtitle: 'Deep Dhano',
    ),
    Homepage(
      image: "assets/musicthub.jpg",
      title: 'Sad Song',
      subtitle: 'Jaydeep nasit ',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 4,
              crossAxisSpacing: 30,
              mainAxisSpacing: 1),
          itemCount: homepage.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage(
                    homepage[index].image,
                  ),
                ),
                Text(
                  homepage[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  homepage[index].subtitle,
                  style: TextStyle(fontSize: 15),
                )
              ],
            );
          }),
    );
  }
}

class Homepage {
  var image;
  var title;
  var subtitle;

  Homepage({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
