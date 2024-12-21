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
                        textColor: Colors.white,
                        color: const Color(0xFF333333),
                        horizontalSpacing: 10,
                        verticalSpacing: 10,
                        iconData: FontAwesomeIcons.google,
                        title: 'Continue with Google',
                        textSize: 16,
                        iconColor: Colors.white,
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
                        textSize: 16,
                        color: const Color(0xFF1877F2),
                        horizontalSpacing: 10,
                        verticalSpacing: 10,
                        textColor: Colors.white,
                        iconData: FontAwesomeIcons.facebookSquare,
                        iconColor: Colors.black,
                        title: 'Continue with Facebook',
                        key: const Key('FaceBookKey'),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('or'),
                          const SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'use your email',
                              style: TextStyle(
                                color: Colors.white,
                                decoration:
                                    TextDecoration.underline, // Adds underline
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Are you an artist?',
                            style: CustomTextStyles.poppins(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Go to Namma Flutter Page',
                                  style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration
                                        .underline, // Adds underline
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  size: 16,
                                  FontAwesomeIcons.externalLink,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      )),
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
