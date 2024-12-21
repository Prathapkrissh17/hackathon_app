import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_app/src/common/font_style.dart';
import 'package:hackathon_app/src/common/hack_button.dart';
import 'package:hackathon_app/src/features/home/presentation/home_screen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/musixmatch_icon_black.png',
                        width: 60,
                        height: 80,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Get started!',
                      style: CustomTextStyles.poppins(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 10),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Join our amazing community of music lovers',
                        style: CustomTextStyles.poppins(
                          fontSize: 16,
                          color: Colors.white60,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      HackButton(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen();
                          }));
                        },
                        color: const Color(0xFF333333),
                        horizontalSpacing: 10,
                        verticalSpacing: 10,
                        iconData: FontAwesomeIcons.google,
                        title: 'Continue with Google',
                        key: const Key('GoogleKey'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      HackButton(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeScreen();
                          }));
                        },
                        color: const Color(0xFF4A8AFF),
                        horizontalSpacing: 10,
                        verticalSpacing: 10,
                        iconData: FontAwesomeIcons.facebook,
                        title: 'Continue with Facebook',
                        key: const Key('FaceBookKey'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
