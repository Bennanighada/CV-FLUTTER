import 'package:flutter/material.dart';

class CompetencesPage extends StatelessWidget {
  final String title;

  CompetencesPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
                bottom: 3.0,
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/competance.png",
                  ),
                ),
                title: Text("Compétances en informatique"),
                subtitle: Text(" HTML, CSS, JavaScript, XML,\n JAVA, PYTHON, CSS, MYSQL"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/language.jpg",
                  ),
                ),
                title: Text("Languages"),
                subtitle: Text(" Arabe\n Français\n Anglais\n Italien"),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/soft.jpg",
                  ),
                ),
                title: Text("SOFT SKILLLS"),
                subtitle: Text(" Travail en groupe,\n Gestion du temps"),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    "image/certif.jpg",
                  ),
                ),
                title: Text("CERTIFICATIONS"),
                subtitle: Text("Language de programmation Python:\n Niveau 1 et 2 (2022)"),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
