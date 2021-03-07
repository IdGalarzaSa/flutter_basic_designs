import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textTitleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final textSubTitleStyle = TextStyle(fontSize: 18, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createButton(context),
          ],
        ),
      ),
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage("https://i.redd.it/tk46u5nrkxm21.png"),
      fit: BoxFit.cover,
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paisaje nocturno",
                    style: textTitleStyle,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    "Retrato de un paisaje nocturno de Australia",
                    maxLines: 2,
                    style: textSubTitleStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              size: 30,
              color: Colors.red,
            ),
            Text(
              "41",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _createAction(Icons.call, "CALL"),
          _createAction(Icons.near_me, "ROUTE"),
          _createAction(Icons.share, "Share"),
        ],
      ),
    );
  }

  Widget _createAction(IconData iconData, String text) {
    return Column(
      children: [
        Icon(iconData, color: Colors.blue, size: 40),
        SizedBox(height: 5),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  Widget _createText() {
    String demoText =
        "Incididunt nulla excepteur dolor enim cupidatat nulla laborum pariatur aliqua. Elit veniam ullamco incididunt ea quis voluptate minim mollit. Id ad consectetur ut cupidatat velit minim fugiat labore quis proident minim quis occaecat in.\n \nUt occaecat Lorem id do do officia in nulla id do velit nulla exercitation. Ipsum qui irure voluptate non id do eu anim proident ut veniam commodo do nostrud. Veniam proident do Lorem enim ipsum mollit. Et tempor mollit qui occaecat laborum consequat.";
    return SafeArea(
      // bottom: false,
      top: false,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Text(
          demoText,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Container _createButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 32),
      child: ElevatedButton(
        child: Text("Next page"),
        style: ElevatedButton.styleFrom(
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "scrollPage");
        },
      ),
    );
  }
}
