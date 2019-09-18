import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Piano"),
        // ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              XylophoneButton(Colors.red[500], 1),
              XylophoneButton(Colors.purple[500], 2),
              XylophoneButton(Colors.indigo[500], 3),
              XylophoneButton(Colors.lightBlue[500], 4),
              XylophoneButton(Colors.teal, 5),
              XylophoneButton(Colors.lightGreen, 6),
              XylophoneButton(Colors.yellowAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneButton extends StatelessWidget {
  static AudioCache player = new AudioCache();
  final Color color;

  final int num;

  XylophoneButton(this.color, this.num);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Container(
          color: color,
        ),
        onPressed: () {
          onPressedColor(num);
        },
      ),
    );
  }

  onPressedColor(int i) async {
    print("Pressed $i");
    // final player = new AudioCache();
    player.play('note$i.wav');
  }
}
