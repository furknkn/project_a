import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_a/screens/User/home_Slide/slideProfil.dart';
import 'package:project_a/screens/User/user_Setting.dart';

import 'home_Slide/slide_Home.dart';

class userHome extends StatefulWidget {
  @override
  _userHomeState createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  int selectedBotAppBarIndex = 0;
  List<Widget> barPages;
  homeBody homeBodyP;
  profileBody profileBodyP;

  @override
  void initState() {
    homeBodyP = homeBody();
    profileBodyP = profileBody();

    barPages = [homeBodyP, profileBodyP, homeBodyP,profileBodyP];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: Icon(
          Icons.accessible_forward,
          color: Colors.amber,
        ),
        //backgroundColor: Colors.white,
        shadowColor: Colors.black12,
        //leading: Icon(Icons.accessible_forward),
        title: Container(
          //margin: EdgeInsets.only(left: 40),
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            style: TextStyle(fontFamily: 'fontDancig', fontSize: 20),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black45,
              ),
              hintText: "search to app",
            ),
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black45,
            icon: Icon(Icons.settings),
            tooltip: "Setting",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => userSetting()));
            },
          ),
        ],
      ),
      body: barPages[selectedBotAppBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Text("Profile")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Setting")),
         BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline), title: Text("Add")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedBotAppBarIndex,
        onTap: (index) {
          setState(() {
            selectedBotAppBarIndex = index;
          });
        },
      ),
    );
  }
}
