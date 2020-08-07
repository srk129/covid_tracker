import 'package:flutter/material.dart';

class HomeScreenButtons extends StatelessWidget {
  HomeScreenButtons(
      {@required this.icon,
      @required this.colour,
      @required this.text,
      this.onPressed});

  final IconData icon;
  final Color colour;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 10,
      color: colour,
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 30,
              vertical: MediaQuery.of(context).size.width / 40),
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 30.0,
              ),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
