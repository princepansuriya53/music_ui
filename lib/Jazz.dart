import 'package:flutter/material.dart';

class Jazz extends StatefulWidget {
  @override
  State<Jazz> createState() => _JazzState();
}

class _JazzState extends State<Jazz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genres'),
        elevation: 4.10,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(25)),
      ),
      body: Container(
        child: ListTile(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      trailing: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.amber,
                        backgroundImage:
                            AssetImage('assets/pexels-pixabay-33688.jpg'),
                      ),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    "Jazz",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Text("3 artist"),
                                ),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Container(
                                child: Text("8 albums"),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 114),
                            child: Text('101 track'),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Play all'),
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder()),
                              ),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Play all'),
                                style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 400,
                color: Colors.indigo[200],
                child: Text(
                  'Artist',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/musicthub.jpg'),
                  radius: 40,
                ),
                title: Text('Yamla Pagla Diwana',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text('Album Song'),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.orangeAccent,
                  size: 45,
                ),
              ),
              Divider(
                thickness: 2.52,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/musicthub.jpg'),
                  radius: 40,
                ),
                title: Text('Garba',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text('Getta Rabari'),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.orangeAccent,
                  size: 45,
                ),
              ),
              Divider(
                thickness: 2.52,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/musicthub.jpg'),
                  radius: 40,
                ),
                title: Text('TO Ake dekh le ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text('Jass Manke'),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.orangeAccent,
                  size: 45,
                ),
              ),
              Container(
                height: 40,
                width: 400,
                color: Colors.orange[400],
                child: Text(
                  'Albums',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/musicthub.jpg'),
                  radius: 40,
                ),
                title: Text('Asma Ko chu kar dekha',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text('Mohit mangukiya'),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.orangeAccent,
                  size: 45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
