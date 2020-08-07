import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:covid_tracker/services/load.dart';

class CountryStats extends StatefulWidget {
  @override
  _CountryStatsState createState() => _CountryStatsState();
}

class _CountryStatsState extends State<CountryStats> {
  String countryURL = 'https://corona.lmao.ninja/v2/countries';

  List countryData;

  void fetchCountryData() async {
    http.Response response = await http.get(countryURL);
    setState(() {
      countryData = jsonDecode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF473F97),
        title: Center(
          child: Text(
            'COUNTRY STATS',
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'BebasNeue',
                letterSpacing: 2.0),
          ),
        ),
      ),
      body: countryData == null
          ? Center(
              child: Load(),
            )
          : ListView.builder(
              itemCount: countryData == null ? 0 : countryData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                countryData[index]['countryInfo']['flag'],
                                height: 30.0,
                                width: 40.0,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                countryData[index]['country']
                                    .toString()
                                    .toUpperCase(),
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'CONFIRMED : ' +
                                    countryData[index]['cases'].toString(),
                                style: TextStyle(
                                    color: Colors.red, fontSize: 18.0),
                              ),
                              SizedBox(width: 30.0),
                              Text(
                                'ACTIVE : ' +
                                    countryData[index]['active'].toString(),
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'RECOVERED : ' +
                                    countryData[index]['recovered'].toString(),
                                style: TextStyle(
                                    color: Colors.green, fontSize: 18.0),
                              ),
                              SizedBox(width: 30.0),
                              Text(
                                'DEATHS : ' +
                                    countryData[index]['deaths'].toString(),
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 18.0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
