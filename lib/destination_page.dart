import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DestinationPage extends StatelessWidget {
  final String title;

  DestinationPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        launch("https://twitter.com/gha_benn");
                      },
                      color: Colors.blueAccent,
                      icon: Icon(FontAwesomeIcons.twitter),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://www.instagram.com/benn_gha/");
                      },
                      color: Colors.red,
                      icon: Icon(FontAwesomeIcons.instagram),
                    ),
                    IconButton(
                      onPressed: () {
                        launch(
                            "https://www.linkedin.com/in/ghada-bennani-a35681203/");
                      },
                      color: Colors.blueGrey,
                      icon: Icon(FontAwesomeIcons.linkedin),
                    ),
                    IconButton(
                      onPressed: () {
                        launch("https://github.com/Bennanighada");
                      },
                      color: Colors.black,
                      icon: Icon(FontAwesomeIcons.github),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/phone.jpg",
                  ),
                ),
                title: Text("Numéro de téléphone"),
                subtitle: Text(
                  "96879377",
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/mail.png",
                  ),
                ),
                title: Text("Adresse e-mail"),
                subtitle: Text("bennanighada22@icloud.com"),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/adrr.png",
                  ),
                ),
                title: Text("Adresse"),
                subtitle: Text("Cité Saleem, Kasserine 1200"),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}