import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlareButtonApp());

class FlareButtonApp extends StatefulWidget {
  @override
  _FlareButtonAppState createState() => _FlareButtonAppState();
}

class _FlareButtonAppState extends State<FlareButtonApp> {
  String _animation = 'Loading';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlareActor(
          "assets/button.flr",
          animation: _animation,
        ),
      ),
    );
  }
}
