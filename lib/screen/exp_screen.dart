import 'package:flutter/material.dart';
import 'package:flutter_cv/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cv/widget/header.dart';

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
            radius:80.0,
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

class ExpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Header(
            backgroundImage: AssetImage("image/exp.jpg"),
            icon: Icon(Icons.person),
            title: "Expériences",
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(
                  "image/centre.png",
                ),
              ),
              title: Text("Stage de fin d'études au Centre de formation Sadeem, Gabès, Tunisie (2022) "),
              subtitle: Text(" Développement de la Conception d'un projet\n Développement de l'application de fin d'etude"),
            ),
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("image/telecom.png"),
              ),
              title: Text("Stage de perfectionnement : Tunisie Télécom, Kasserine (2021)"),
              subtitle: Text(" Raccordement de fibre optique\n Maintenence du réseau\n Entretien et réparation des dérangements"),
            ),
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("image/poste.jpg"),
              ),
              title: Text("Stage d'initiation : Poste Tunisienne kasserine(2020)"),
              subtitle: Text(" Réaliser des opérations sur le comptes des clients(Versement,Retrait,Moneygram,..)\n Bien communiquer avec les clients et gérer mon stress "),
            ),
          ),
        ],
      ),
    );
  }
}