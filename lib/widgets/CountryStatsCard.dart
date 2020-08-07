import 'package:flutter/material.dart';
import 'NullStatCards.dart';
import 'WithDataCard.dart';

class CountryStatCard extends StatelessWidget {
  CountryStatCard(
      {this.cases,
      this.recovered,
      this.deaths,
      this.activeCases,
      this.criticalCases});

  final int cases;
  final int recovered;
  final int deaths;
  final int activeCases;
  final int criticalCases;

  @override
  Widget build(BuildContext context) {
    return cases == null
        ? Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: IfNull(
                        text: 'Infected',
                        color: Color(0xFFFFB259),
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: IfNull(
                        text: 'Death',
                        color: Color(0xFFFF5959),
                        size: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: IfNull(
                        text: 'Recovered',
                        color: Color(0xFF4CD97B),
                        size: 15.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: IfNull(
                        text: 'Active',
                        color: Color(0xFF4CB5FF),
                        size: 15.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: IfNull(
                        text: 'Critical',
                        color: Color(0xFF9059FF),
                        size: 15.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        : Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: WithDataCard(
                        text: 'Infected',
                        color: Color(0xFFFFB259),
                        size: 20.0,
                        noc: cases.toString(),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: WithDataCard(
                        text: 'Death',
                        color: Color(0xFFFF5959),
                        size: 20.0,
                        noc: deaths.toString(),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: WithDataCard(
                          text: 'Recovered',
                          color: Color(0xFF4CD97B),
                          size: 18.0,
                          noc: recovered.toString(),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: WithDataCard(
                          text: 'Active',
                          color: Color(0xFF4CB5FF),
                          size: 18.0,
                          noc: activeCases.toString(),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: WithDataCard(
                          text: 'Critical',
                          color: Color(0xFF9059FF),
                          size: 18.0,
                          noc: criticalCases.toString(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}

//Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(10.0),
//        color: colour,
//      ),
//      child: Padding(
//        padding: const EdgeInsets.all(10.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Text(
//              text,
//              style: TextStyle(
//                color: Colors.white,
//                fontSize: 20.0,
//              ),
//            ),
//            SizedBox(
//              height: 35.0,
//            ),
//            Text(cases),
//          ],
//        ),
//      ),
//    );
