import 'package:flutter/material.dart';
import 'Album.dart';
import 'Artist.dart';
import 'GENRES.dart';
import 'ListSong.dart';
import 'Musicdisk.dart';
import 'Playlist.dart';
import 'Songlist.dart';

class Mainpage extends StatefulWidget {
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _ISselectrdindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Music World',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Song",
              ),
              Tab(
                text: "Playlist",
              ),
              Tab(
                text: "Albums",
              ),
              Tab(
                text: "Artist",
              ),
              Tab(
                text: "Genrels",
              ),
            ],
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: DrawerHeader(
            margin: EdgeInsets.only(
              top: 4,
              bottom: 4,
              left: 2,
              right: 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome To Music World',
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w900,
                      color: Colors.indigo,
                    ),
                  ),
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image:
                            AssetImage('assets/pexels-fiona-art-3631430.jpg'),
                      ),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 30),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/bak.webp'),
                    ),
                    accountName: Text('Pansuriya Prince'),
                    accountEmail: Text('I Love Music World'),
                  ),
                  ListTile(
                    title: Text(
                      'PlayList',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.playlist_play,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 4,
                    height: 2,
                  ),
                  ListTile(
                    title: Text(
                      'My Collection',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.collections_bookmark_outlined,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 4,
                    height: 2,
                  ),
                  ListTile(
                    title: Text(
                      'Local Music',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.library_music_outlined,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 4,
                    height: 2,
                  ),
                  ListTile(
                    title: Text(
                      'Recently Play',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.playlist_add_check_rounded,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 4,
                    height: 2,
                  ),
                  ListTile(
                    title: Text(
                      'Follwoing',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.follow_the_signs,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 4,
                    height: 2,
                  ),
                  ListTile(
                    title: Text(
                      'Follower',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    leading: Icon(
                      Icons.person_add_alt,
                      size: 30,
                      color: Colors.blue,
                    ),
                    onTap: () {},
                  ),
                  Divider(
                    thickness: 4,
                    height: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Songlist(),
            Playlist(),
            Album(),
            Artist(),
            GENRES(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          onTap: _Itamtab,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context) => {}));
                  },
                  child: Icon(Icons.star_outlined)),
              label: 'Music Player',
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.indigo[400],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_sharp),
              label: 'User',
              backgroundColor: Colors.greenAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi_tethering_outlined),
              label: 'Radio',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Datasong(),
                      ),
                    );
                  },
                  child: Icon(Icons.table_rows)),
              label: 'List Music',
              backgroundColor: Colors.purple,
            ),
          ],
          iconSize: 30,
          currentIndex: _ISselectrdindex,
        ),
      ),
    );
  }

  void _Itamtab(int index) {
    setState(() {
      _ISselectrdindex = index;
    });
  }
}
