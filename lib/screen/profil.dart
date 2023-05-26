import 'package:flutter/material.dart';
import 'package:flutter_cv/competance_page.dart';
import 'package:flutter_cv/destination_page.dart';

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

class ProfilScreen extends StatelessWidget {
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
            backgroundImage: AssetImage("image/moi.jpg"),
            icon: Icon(Icons.person),
            title: "   Ghada BENNANI\n"
                '  Technicienne Superieur en IT',
          ),
          SizedBox(height: 10),
          Divider(color: Colors.black),
          SizedBox(height: 25),
          Text(
            "Créative, Curieuse et dynamique, ayant une grande capacité d'organisation "
                "et de prise d'initiative, et motivée par l'apprentissage continu "
                "dans le domaine de l'informatique et de la comptabilité.\n",
            style: TextStyle(
              fontSize: 24,  // Change the font size to your desired value
              fontWeight: FontWeight.w400,  // Add the desired font weight
              fontStyle: FontStyle.italic,  // Add the desired font style
              color: Colors.black54,  // Change the text color if needed
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>DestinationPage(
                    title: "Contact",
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.mail, size: 20),
                SizedBox(width: 10),
                Text(
                  "Contact",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              onPrimary: Colors.black,
              minimumSize: Size(double.infinity, 50),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CompetencesPage(
                    title: "Compétences",
                  ),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.assessment, size: 20),
                SizedBox(width: 10),
                Text(
                  "Compétences",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue,
              onPrimary: Colors.black,
              minimumSize: Size(double.infinity, 50),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

