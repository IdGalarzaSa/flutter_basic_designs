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
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _titleInformation(),
                  _buttonsTable(),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: _customBottonNavigationBar(),
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

  Widget _titleInformation() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Classify transaction",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Classify this transaction into a particular category",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _customBottonNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink[200],
      unselectedItemColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Options'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined), label: 'Reports'),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_sharp), label: 'Users')
      ],
    );
  }

  Widget _buttonsTable() {
    return Table(
      children: [
        TableRow(children: [
          _cardsButtons(Colors.green, Icons.access_time_rounded, "Schedule"),
          _cardsButtons(Colors.blue, Icons.car_rental, "Car rental"),
        ]),
        TableRow(children: [
          _cardsButtons(
              Colors.amber, Icons.directions_ferry_outlined, "Cruise"),
          _cardsButtons(Colors.brown, Icons.airplanemode_on_outlined, "travel"),
        ]),
        TableRow(children: [
          _cardsButtons(Colors.teal, Icons.laptop_chromebook, "Work Online"),
          _cardsButtons(Colors.redAccent, Icons.movie_filter, "Watch a movie"),
        ]),
        TableRow(children: [
          _cardsButtons(
              Colors.purple, Icons.account_balance_outlined, "Balance"),
          _cardsButtons(Colors.indigo, Icons.add_moderator, "Insurances"),
        ]),
        TableRow(children: [
          _cardsButtons(Colors.orange, Icons.weekend_rounded, "Furniture"),
          _cardsButtons(Colors.green, Icons.collections_bookmark, "Bookmarks"),
        ]),
        TableRow(children: [
          _cardsButtons(
              Colors.lime, Icons.confirmation_number_rounded, "Tickets"),
          _cardsButtons(Colors.teal, Icons.support_agent_outlined, "Support"),
        ]),
      ],
    );
  }

  Widget _cardsButtons(Color color, IconData icon, String text) {
    return GestureDetector(
      onTap: () {
        print("click");
      },
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            margin: EdgeInsets.all(20),
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(52, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(25),
            ),
            child: _columData(color, icon, text),
          ),
        ),
      ),
    );
  }

  Column _columData(Color colorSelected, IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _circularIcon(colorSelected, icon),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 20, color: colorSelected),
        )
      ],
    );
  }

  Container _circularIcon(Color colorSelected, IconData icon) {
    return Container(
      child: CircleAvatar(
        radius: 35,
        backgroundColor: colorSelected,
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
