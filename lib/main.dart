import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: 150, // Set the height to 300
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30), // Adjust the radius as needed
              bottomRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: const SafeArea(
            child: Row(
              children: [
                DrawerButton(),
                Text(
                  'Rounded AppBar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
