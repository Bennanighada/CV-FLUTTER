import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_cv/screen/exp_screen.dart';
import 'package:flutter_cv/screen/formation.dart';
import 'package:flutter_cv/screen/profil.dart';
import 'package:flutter_cv/screen/vieprof.dart';

class TabBarScreen extends StatefulWidget {
  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _indexPages = 0;
  List<Widget> pages = [
    ProfilScreen(),
    ExpScreen(),
    FormationScreen(),
    VieProfessionnelle(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum Vitae'),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white70,
          ),
          Icon(
            Icons.update,
            size: 30,
            color: Colors.white70,
          ),
          Icon(
            Icons.school,
            size: 30,
            color: Colors.white70,
          ),
          Icon(
            Icons.business_center,
            size: 30,
            color: Colors.white70,
          ),
        ],
        onTap: (index) {
          setState(() {
            _indexPages = index;
          });
        },
      ),
      body: pages[_indexPages],
    );
  }
}
