import 'package:flutter/material.dart';

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

class FormationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: <Widget>[
          Header(
            backgroundImage: AssetImage("image/formation.jpg"),
            icon: Icon(Icons.person),
            title: "Formations",
          ),
          SizedBox(
            height: 10,
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
                  "image/iset.jpg",
                ),
              ),
              title: Text("Licence appliquée en technologie de l'informatique"),
              subtitle: Text("Institut Supérieur des Etudes Technologiques de Sfax(2019/2022)"),
            ),
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("image/lycee.jpg"),
              ),
              title: Text("Baccalauréat Mathématiques"),
              subtitle: Text("Lycée 2 mars Kasserine(2019)"),
            ),
          ),
          Card(
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage("image/efc.jpg"),
              ),
              title: Text("technicienne en comptabilité"),
              subtitle: Text("école de formation des cadre (2017/2019)"),
            ),
          ),
        ],
      ),
    );
  }
}
