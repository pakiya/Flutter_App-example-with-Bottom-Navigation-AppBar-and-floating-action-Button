import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Click Search Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // App Bar
      appBar: new AppBar(
        backgroundColor: Colors.blue.shade700,
        title: new Text("Fancy Day"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("Click Icon Tapped!")),
          new IconButton(icon: new Icon(Icons.search), onPressed: _onPress)
        ],
      ),

      // Other properties.
      backgroundColor: Colors.grey.shade100,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Bonni",
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepOrange),
            ),
            new InkWell(
              child: new Text("Button!"),
              onTap: () => debugPrint("Button Tapped!"),
            ),
          ],
        ),
      ),

      //Floating ActionBar.
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Pressed!"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'Going Up!',
        child: new Icon(Icons.call_missed),
      ),

      // Bottom NavigationBar.
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add), title: new Text("Hey")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.print), title: new Text("Nope")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.call_missed), title: new Text("Hello"))
        ],
        onTap: (int i) => debugPrint("Hey Touched $i"),
      ),
    );
  }
}
