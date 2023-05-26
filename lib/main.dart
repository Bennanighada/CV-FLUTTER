import 'package:flutter/material.dart';
import 'screen/tab_bar_screen.dart';
import 'screen/login_screen.dart';
import 'screen/inscription.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNormalTheme = true;
  bool isLoggedIn = false;
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "cv",
      theme: isNormalTheme
          ? ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: backgroundColor,
      )
          : null,
      routes: {
        '/': (context) => AuthentificationHome(),
        '/tabs': (context) => TabBarScreen(),
        '/authentification': (context) => AuthentificationHome(),
        '/inscription': (context) => InscriptionPage(),
        '/login' :(context) => AuthentificationHome(),
      },
      initialRoute: '/',
    );
  }

  void login() {
    setState(() {
      isLoggedIn = true;
    });
  }

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = Colors.white;
    });
  }
}
