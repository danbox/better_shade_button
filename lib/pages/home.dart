import 'package:flutter/material.dart';
import 'package:better_shade_button/sounds.dart';
import 'package:better_shade_button/pages/settings.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SoundManager soundManager = SoundManager();

  void _playSound() {
    soundManager.playLocal('shade.mp3');
  }

  /// This is called every time setState is called
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RawMaterialButton(
          onPressed: _playSound,
          child: new Icon(
            Icons.arrow_right,
            color: Colors.orange,
            size: 35.0,
          ),
          shape: new CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.white,
          padding: const EdgeInsets.all(15.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            DrawerHeader(
              child: Text('Better Shade Button'),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Close the drawer before navigation
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              }
            ),
          ]
        ),
      ),
    );
  }
}
