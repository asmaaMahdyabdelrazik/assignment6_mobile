import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BasketballCounterApp());
}

class BasketballCounterApp extends StatefulWidget {
  @override
  _BasketballCounterAppState createState() => _BasketballCounterAppState();
}

class _BasketballCounterAppState extends State<BasketballCounterApp> {
  int _teamAScore = 0;
  int _teamBScore = 0;

  void _incrementTeamAScore(int points) {
    setState(() {
      _teamAScore += points;
    });
  }

  void _incrementTeamBScore(int points) {
    setState(() {
      _teamBScore += points;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          title: Text('Basketball Counter',
              style: TextStyle(color: Color(0xffffffff), fontSize: 20)),
          centerTitle: true,
          backgroundColor: Color(0xff219f4c),
        ),
        body: Column(
          children: [
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff23a55f),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '$_teamAScore',
                      style: TextStyle(fontSize: 130.0, color: Colors.brown),
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text(' +1 point ',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamAScore(1),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff23a55f),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('+2 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamAScore(2),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff23a55f),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('+3 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamAScore(3),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff23a55f),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff23a55f),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '$_teamBScore',
                      style: TextStyle(fontSize: 130.0, color: Colors.brown),
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text(' +1 point ',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamBScore(1),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff23a55f),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('+2 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamBScore(2),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff23a55f),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          child: Text('+3 points',
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () => _incrementTeamBScore(3),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff23a55f),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 60.0),
            ElevatedButton(
              child: Text('Reset',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              onPressed: () {
                setState(() {
                  _teamAScore = 0;
                  _teamBScore = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
