import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debug etiketini ortadan kaldırır
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            // elevation app bar altındaki gölgelendirmeyi yok edip fluent bir görüntü sağlıyor
            elevation: 0.0,

            leading: Padding(
              padding: EdgeInsets.only(left: 12),
              child: IconButton(
                  icon: Icon(Icons.account_box),
                  onPressed: () {
                    // print('click leading');
                  }),
            ),

            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Appbar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
              ],
            ),
          ),

          // body of the main screen
          body: Stack(
            children: <Widget>[
              Center(
                  child: Container(
                      width: 400, height: 100, color: Colors.deepPurple[800]))
            ],
          ),

          // defining bottom nav bar and it's items
          bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.black),

              // bottom nav bar items
              child: BottomNavigationBar(items: <BottomNavigationBarItem>[
                // 1
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.deepPurple[300]),
                    title: Text('AnaSayfa',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[300]))),

                // 2
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  title: Text('Keşfet',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),

                // 3
                BottomNavigationBarItem(
                    icon: Icon(Icons.create),
                    title: Text('Yarat',
                        style: TextStyle(fontWeight: FontWeight.bold))),

                // 4
                BottomNavigationBarItem(
                    icon: Icon(Icons.message),
                    title: Text(
                      'DM',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),

                // 5
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    title: Text('Hesap',
                        style: TextStyle(fontWeight: FontWeight.bold)))
              ])),
        ));
  }
}
