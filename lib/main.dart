import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JoystickExample(),
    );
  }
}

class JoystickExample extends StatefulWidget {
  @override
  _JoystickExampleState createState() => _JoystickExampleState();
}

class _JoystickExampleState extends State<JoystickExample> {
  double x = 0.0; // Horizontal movement
  double y = 0.0; // Vertical movement

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Spele Rover"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ESP CAM Placeholder
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey,
              child: Center(
                child: Text(
                  "ESP CAM",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          // Sensor data display
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSensorBox("LUX", "N/A"),
                _buildSensorBox("Temperature", "N/A"),
                _buildSensorBox("Humidity", "N/A"),
              ],
            ),
          ),

          // Joystick controller
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Joystick(
                  listener: (StickDragDetails details) {
                    setState(() {
                      x = details.x; // Update horizontal movement
                      y = details.y; // Update vertical movement
                    });

                    // Debug or use for robot control
                    print("Joystick moved: x=${details.x}, y=${details.y}");
                  },
                ),
                SizedBox(height: 5),
                Text(
                  "X: ${x.toStringAsFixed(2)}, Y: ${y.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSensorBox(String label, String value) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
