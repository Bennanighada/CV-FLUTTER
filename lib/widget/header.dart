import 'package:flutter/material.dart';
class Header extends StatelessWidget {

  final String title;
  final Icon icon;
  Header (this.icon, this.title);
  @override
  Widget build (BuildContext context ){
    return Row(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor:  Colors.blue,
          child: icon,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 30,color: Colors.black),
        )
      ],
    );
  }
}