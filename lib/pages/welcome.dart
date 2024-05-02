import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/logo.png', // Replace with the path to your logo image
                  height: 100,
                ),
                const Text(
                  'RoomConnect',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'unified plan',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: const Text('Get Started'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}