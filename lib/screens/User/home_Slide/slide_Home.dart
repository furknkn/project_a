import 'package:flutter/material.dart';
class homeBody extends StatefulWidget {
  @override
  _homeBodyState createState() => _homeBodyState();
}

class _homeBodyState extends State<homeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );;
  }
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
