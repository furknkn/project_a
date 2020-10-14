import 'package:flutter/material.dart';
import 'package:project_a/repo/User_Repository.dart';
import 'package:project_a/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:project_a/Provider/fireBase_Provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<userRepository>(
          create: (context) => userRepository(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: providerWithFirebaseAuth(),
      ),
    );
  }
}
