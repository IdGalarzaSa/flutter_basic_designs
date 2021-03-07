import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pageView1(),
          _pageView2(context),
        ],
      ),
    );
  }

  Widget _pageView1() {
    return Stack(
      children: [
        _backgroundColorPageView1(),
        _imagePageView1(),
        _informationPageView1(),
      ],
    );
  }

  Widget _backgroundColorPageView1() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
    );
  }

  Widget _imagePageView1() {
    return Container(
      child: Image(
        image: AssetImage('lib/assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _informationPageView1() {
    final styleInformationText = TextStyle(color: Colors.white, fontSize: 50);

    return SafeArea(
      child: Column(
        children: [
          Text('11°', style: styleInformationText),
          Text('Miercoles', style: styleInformationText),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pageView2(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: ElevatedButton(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("Next Page"),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green[200],
            shape: StadiumBorder(),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "gridPage");
          },
        ),
      ),
    );
  }
}
