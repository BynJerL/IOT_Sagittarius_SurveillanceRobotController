import 'package:flutter/material.dart';
import 'circlebutton.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('DASHBOARD'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Data Display (Temp, Hum, Spd)
            Container(
              width: 300,
              height: 200,
              color: Colors.grey[300],
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Temp: -0.7°C'),
                      Text('Hum: 8.7%'),
                      Text('Spd: 50%'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Left and Right Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: Text('Left'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: Text('Right'),
                ),
              ],
            ),
            SizedBox(height: 16.0),

            // Control Buttons
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First Row (FR)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleButton(text: 'FR'),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  // Second Row (L, R)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleButton(text: 'L'),
                      CircleButton(text: 'R'),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  // Third Row (BK)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleButton(text: 'BK'),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  // Fourth Row (A, B)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleButton(text: 'A'),
                      CircleButton(text: 'B'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}