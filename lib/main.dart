import 'package:flutter/material.dart';
import 'package:better_shade_button/sounds.dart';

void main() => runApp(BetterShadeButton());

class BetterShadeButton extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Better Shade Button',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainWidget(title: 'Better Shade Button'),
    );
  }
}

class MainWidget extends StatefulWidget {
  MainWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MainWidgetState createState() => MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  SoundManager soundManager = SoundManager();

  void _playSound() {
    soundManager.playLocal('shade.mp3');
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: RawMaterialButton(
          onPressed: _playSound,
          child: new Icon(
            Icons.arrow_right,
            color: Colors.blue,
            size: 35.0,
          ),
          shape: new CircleBorder(),
          elevation: 2.0,
          fillColor: Colors.white,
          padding: const EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}
