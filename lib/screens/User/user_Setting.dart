import 'package:flutter/material.dart';
import 'package:project_a/Provider/fireBase_Provider.dart';
import 'package:project_a/repo/User_Repository.dart';
import 'package:provider/provider.dart';

class userSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final useRepo = Provider.of<userRepository>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        )),
        title: Text(
          "Options",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Accounts",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessible),
                      title: Text("Edit Profile"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.vpn_key),
                      title: Text("Change Password"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text(
                        "Setting",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text("Notices"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      leading: Icon(Icons.language),
                      title: Text("Language"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text(
                        "Connect social accountss",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        'assets/logos/facebok.png',
                      ),
                      title: Text("Facebook"),
                      trailing: Switch(
                        value: false,
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/logos/instagram.png'),
                      title: Text("Instagram"),
                      trailing: Switch(
                        value: false,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        useRepo.singOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    providerWithFirebaseAuth()));
                      },
                      title: Center(
                          child: Text(
                        "Log out current account",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
