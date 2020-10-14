import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_a/screens/User/user_Setting.dart';

class userHome extends StatefulWidget {
  @override
  _userHomeState createState() => _userHomeState();
}

class _userHomeState extends State<userHome> {
  int selectedBotAppBarIndex = 0;
  List<Widget>barPages;


  @override
  void initState() {
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
            onPressed: () { Navigator.push(context,
                MaterialPageRoute(builder: (context) => userSetting()));},
          ),
        ],
      ),
      body: Container(
        color: Color(0xfff1faee),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(height: 180, child: _cubeBox()),
            Container(
              height: 324,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.blueGrey,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Text("Profile")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Setting")),
        ],
        currentIndex: selectedBotAppBarIndex,
        onTap: (index) {
          setState(() {
            selectedBotAppBarIndex = index;


          });
        },
      ),
    );
  }

  Widget _cubeBox() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30))),
      child: ListView(
        padding: EdgeInsets.only(right: 15),
        scrollDirection: Axis.horizontal,
        children: [_boxDen(), _boxDen(), _boxDen(), _boxDen()],
      ),
    );
  }

  Widget _boxDen() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFb7b7a4).withOpacity(0.1)),
      margin: EdgeInsets.only(top: 25, bottom: 15, left: 15, right: 0),
      child: Column(
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'assets/icons/savewater.png',
              cacheHeight: 60,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10.0),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFD9AFD9),
                    Color(0xFF97D9E1),
                  ]),
            ),
          ),
          Text("Deneme \n dadad"),
        ],
      ),
    );
  }
}
