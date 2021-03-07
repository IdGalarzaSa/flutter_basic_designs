import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backGroundPage(),
          _pinkBoxPosition(),
        ],
      ),
    );
  }

  Widget _backGroundPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1),
          colors: [
            Color.fromRGBO(52, 52, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ],
        ),
      ),
    );
  }

  Widget _pinkBox() {
    return SafeArea(
      child: Container(
        width: 420,
        height: 400,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.pink[300],
            Colors.pink[200],
          ]),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }

  Widget _pinkBoxPosition() {
    return Positioned(
      top: -115.0,
      left: -50,
      child: Transform.rotate(
        angle: -pi / 4.0,
        child: _pinkBox(),
      ),
    );
  }
}
