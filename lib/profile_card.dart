import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ProfileCardWithName()));

class ProfileCardWithName extends StatelessWidget {
  const ProfileCardWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Profile Card")),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile Image + Status
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      // backgroundImage: NetworkImage(
                      //   'https://i.pravatar.cc/150?img=3',
                      // ),
                      backgroundImage: AssetImage('assets/images/flutter_icon.png'),
                    ),
                    Positioned(
                      bottom: 4,
                      right: 4,
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // User Name
                const Text(
                  'Subah',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}