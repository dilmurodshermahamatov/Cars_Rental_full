import 'package:car_rental/Profil_folder/profil_home.dart';
import 'package:car_rental/models/cars_page.dart';
import 'package:car_rental/models/rentals_page.dart';
import 'package:car_rental/models/saved_page.dart';
import 'package:flutter/material.dart';

class Car_Navigator extends StatefulWidget {
  @override
  _Car_NavigatorState createState() => _Car_NavigatorState();
}

class _Car_NavigatorState extends State<Car_Navigator> {
  static int son = 0;

  void _element(int i) {
    setState(() {
      son = i;
    });
  }

  static List<Widget> _widget = <Widget>[
    Cars(),
    Rentals(),
    Saved(),
    Profil(),
  ];
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widget.elementAt(son),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(son == 0 ? Icons.home : Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(son == 1 ? Icons.near_me : Icons.near_me_outlined),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(son == 2
                ? Icons.bookmark_outlined
                : Icons.bookmark_border_outlined),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(son == 3 ? Icons.person_sharp : Icons.person_outlined),
            label: "Profile",
            // login_rounded
            //  mode_edit
            // mood_rounded
            // more_vert_sharp
          ),
        ],
        currentIndex: son,
        onTap: _element,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.teal,
        mouseCursor: MouseCursor.defer,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
