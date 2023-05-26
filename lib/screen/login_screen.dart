import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthentificationHome extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController txt_login = TextEditingController();
  TextEditingController txt_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Authentification')),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              controller: txt_login,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Utilisateur",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              obscureText: true,
              controller: txt_password,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: "Mot de passe",
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                _onAuthentifier(context);
              },
              child: Text('Connexion', style: TextStyle(fontSize: 22)),
            ),
          ),
          TextButton(
            child: Text(
              "Nouvel Utilisateur",
              style: TextStyle(fontSize: 22),
            ),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/inscription');
            },
          ),
        ],
      ),
    );
  }

  Future<void> _onAuthentifier(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    if (!txt_login.text.isEmpty && !txt_password.text.isEmpty) {
      prefs.setString("login", txt_login.text);
      prefs.setString("password", txt_password.text);
      prefs.setBool("connecte", true);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/tabs');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Vérifier votre identifiant et mot de passe.'),
        ),
      );
    }
  }
}
