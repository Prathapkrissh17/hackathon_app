import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';
import 'package:hackathon_app/src/features/home/presentation/home_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Image.asset(
          //   '',
          // ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
            child: Text(
              'Login',
              style: context.displaySmall,
            ),
          ),
        ],
      ),
    );
  }
}
