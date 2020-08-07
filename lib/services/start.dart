import 'package:covid_tracker/services/load.dart';
import 'package:covid_tracker/services/routes.dart';
import 'package:flutter/material.dart';

class StartUp extends StatefulWidget {
  @override
  _StartUpState createState() => _StartUpState();
}

class _StartUpState extends State<StartUp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Routing()));
  }

  @override
  Widget build(BuildContext context) {
    return Load();
  }
}
