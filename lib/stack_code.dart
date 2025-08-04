import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(child: ProfileWithBadge()),
    ),
  ));
}

class ProfileWithBadge extends StatelessWidget {
  const ProfileWithBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Profile Image
        const CircleAvatar(
          radius: 50,
          /*backgroundImage: NetworkImage(
            'https://i.pravatar.cc/150?img=3', // sample avatar image
          ),*/
          backgroundImage: AssetImage('assets/images/flutter_icon.png'),
        ),

        // Positioned Badge
        Positioned(
          bottom: 4,
          right: 4,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, // border to separate from avatar
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
