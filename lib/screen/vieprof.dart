import 'package:flutter/material.dart';
import '../widget/header.dart';

class Header extends StatelessWidget {
  final Widget icon;
  final String title;
  final ImageProvider? backgroundImage;

  Header({
    required this.icon,
    required this.title,
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundImage: backgroundImage ?? AssetImage("default_image_path"),
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class VieProfessionnelle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Header(
              backgroundImage: AssetImage("image/vieexp.jpg"),
              icon: Icon(Icons.person),
              title: "Vie Professionnelle",
            ),
            SizedBox(height: 10),
            Divider(color: Colors.black),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(
                        "image/exppro.png",
                      ),
                    ),
                    title: Text("Expérience Professionnelle"),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('image/mag.jpg'),
                    ),
                    title: Text(
                      "Gestion de la relation clientèle au Magasin(2021)",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Gérer les stocks et encaisser les paiements",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('image/poste.jpg'),
                    ),
                    title: Text(
                      "La poste tunisienne",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      " Poste : Guichetière (2018/2021)\n Paiemen et émission des mandats\n Ouverture des carnets d'épargne\n Des opérations sur les comptes des clients ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                      (route) => false,
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.logout, color: Colors.white),
                  SizedBox(width: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
