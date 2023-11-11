import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';

class Datasong extends StatefulWidget {
  @override
  _DatasongState createState() => _DatasongState();
}

class _DatasongState extends State<Datasong> {
  TextEditingController TextClear = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        actions: const [Icon(Icons.settings, color: Colors.white)],
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: AnimSearchBar(
                helpText: "Search Song As Your Mood",
                color: Colors.indigo[200],
                width: 480,
                textController: TextClear,
                onSuffixTap: () {
                  setState(() {
                    TextClear.clear();
                  });
                },
                onSubmitted: (String music) {},
              ),
            ),
            Container(
              height: 40,
              width: 600,
              color: Colors.blue[100],
              child: const Text(
                'Artist',
                style: TextStyle(fontSize: 28),
              ),
            ),
            const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                  radius: 40,
                ),
                title: Text(
                  'Asma Ko chu kar dekha',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Mohit mangukiya'),
                trailing: Icon(Icons.more_vert,
                    color: Colors.orangeAccent, size: 45)),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                  radius: 40),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing:
                  Icon(Icons.more_vert, color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing:
                  Icon(Icons.more_vert, color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            Container(
              height: 40,
              width: 600,
              color: Colors.yellow[100],
              child: const Text(
                'Tracks',
                style: TextStyle(fontSize: 28),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/musicthub.jpg'),
                radius: 40,
              ),
              title: Text(
                'Asma Ko chu kar dekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Mohit mangukiya'),
              trailing: Icon(Icons.play_circle_filled_outlined,
                  color: Colors.orangeAccent, size: 45),
            ),
            const Divider(height: 1, thickness: 2, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
