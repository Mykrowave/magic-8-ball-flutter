import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: MagicEightBallPage(),
      ),
    );

class EightBall extends StatefulWidget {
  EightBall({Key key}) : super(key: key);

  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  final List<String> _AssetAnswerImages = [
    'images/ball1.png',
    'images/ball2.png',
    'images/ball3.png',
    'images/ball4.png',
    'images/ball5.png',
  ];

  int currentAnswerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset(_AssetAnswerImages[currentAnswerIndex]),
          onPressed: () {
            setState(() {
              currentAnswerIndex = Random().nextInt(5);
            });
          },
        ),
      ),
    );
  }
}

class MagicEightBallPage extends StatelessWidget {
  const MagicEightBallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: EightBall(),
    );
  }
}
