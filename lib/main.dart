import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text('Ask Me Anything'),
          )),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int dice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
      onPressed: () {
        setState(() {
          dice = Random().nextInt(6) + 1;
        });
      },
      child: Image.asset('images/d$dice.jpg'),
    ));
  }
}
