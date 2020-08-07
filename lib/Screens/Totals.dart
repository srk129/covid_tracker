import 'package:flutter/material.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'App Info',
          style: TextStyle(
            fontFamily: 'Patua One',
            fontSize: 27,
          ),
        )),
        backgroundColor: Color(0xFF473F97),
      ),
      body: Column(
        children: <Widget>[
          AboutDialog(
            applicationName: 'Covid Tracker',
            applicationIcon: Image.asset(
              'images/AppIcon.png',
              height: 90,
            ),
            applicationVersion: Platform.version,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              launch(
                  'https://dribbble.com/shots/11015463-Covid-19-App-Free/attachments/2609400?mode=media');
            },
            child: Card(
              color: Color(0xFF473F97),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Design inspired from Dribbble.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
