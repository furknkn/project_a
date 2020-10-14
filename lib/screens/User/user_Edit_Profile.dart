import 'package:flutter/material.dart';

class userEditProfile extends StatefulWidget {
  @override
  _userEditProfileState createState() => _userEditProfileState();
}

class _userEditProfileState extends State<userEditProfile> {
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _topContainer(),
              _botContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topContainer() {
    return Container(
      color: Color(0xffa8dadc),
      height: 200.0,
      width: double.infinity,
      child: Center(
        child: Container(
          width: 128,
          height: 128,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/icons/pp.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  Widget _botContainer() {
    return Container(
      color: Color(0xffa8dadc),
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Basic Information",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              title: Container(
                child: Text("Name"),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "isim",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Container(
                child: Text("Mail"),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "mail@ff.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Container(
                child: Text("Bio"),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "Bio",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Container(
                child: Text("Phone"),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "0999443333",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Location",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ListTile(
              title: Container(
                child: Text("Location"),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "London",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
