import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pageView1(),
          _pageView2(),
        ],
      ),
    );
  }

  Widget _pageView1() {
    return Container(
      child: Image(
        image: AssetImage('lib/assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _pageView2() {
    return Container(
      child: Image(
        image: AssetImage('lib/assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}
