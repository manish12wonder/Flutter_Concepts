import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: LayoutDemo(), debugShowCheckedModeBanner: false,));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row, Column & Container")),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "User Details",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.person, size: 40),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Manish Ranjan", style: TextStyle(fontSize: 18)),
                    Text("Flutter Developer"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}