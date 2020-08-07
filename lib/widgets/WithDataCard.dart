import 'package:flutter/material.dart';

class WithDataCard extends StatelessWidget {
  final Color color;
  final String text;
  final String noc;
  final double size;

  WithDataCard({this.color, this.text, this.size, this.noc});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: size,
              ),
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              noc,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
