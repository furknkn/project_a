import 'package:flutter/material.dart';
import 'package:project_a/repo/User_Repository.dart';
import 'package:provider/provider.dart';
import 'package:project_a/Utilities/Constants.dart';

class scertest extends StatefulWidget {
  @override
  _scertestState createState() => _scertestState();
}

class _scertestState extends State<scertest> {
  @override
  Widget build(BuildContext context) {
    final userRepo = Provider.of<userRepository>(context);
    return Scaffold(
      appBar: AppBar(title: Text("test"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: () async{
              await debugPrint(userRepo.user.email.toString());
              debugPrint(userRepo.durum.toString());
            },),
            RaisedButton(
              child: Text("test"),
              onPressed: () async {
                await userRepo.singOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
