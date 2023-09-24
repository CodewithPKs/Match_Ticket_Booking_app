// import 'dart:async';
// import 'package:flutter/material.dart';
//
// import 'bottom.dart';
//
//
//
// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Use Future.delayed to wait for 2 seconds before navigating to the home screen.
//     Future.delayed(Duration(seconds: 2), () {
//       // Navigate to the home screen using Navigator.
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(
//           builder: (context) => BottomBar(), // Replace 'HomeScreen' with your actual home screen widget.
//         ),
//       );
//     });
//
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               Center(
//                 child: Image.asset("assets/images/wc23.png"),
//               ),
//             ],
//           )
//     ],)
//     );
//
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: SplashScreen(),
//   ));
// }}

import 'dart:async';
import 'package:flutter/material.dart';
import 'bottom.dart';
 // Replace 'home_screen.dart' with the actual file containing your home screen.

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: Duration(seconds: 1), // Adjust the duration as needed
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 2.0).animate(_animationController);

    // Start the fade-in animation after a short delay.
    Timer(Duration(milliseconds: 500), () {
      _animationController.forward();
    });

    // Use Future.delayed to wait for 3 seconds before navigating to the home screen.
    Timer(Duration(seconds: 3), () {
      // Navigate to the home screen using Navigator.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>BottomBar(), // Replace 'HomeScreen' with your actual home screen widget.
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Customize your splash screen UI here.
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset(
            'assets/images/wc23.png', // Replace with your image asset path.
            width: 500.0, // Set width and height as needed.
            height: 500.0,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

