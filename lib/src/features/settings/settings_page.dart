import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_app/src/common/font_style.dart';
import 'package:hackathon_app/src/features/profile/profile_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Settings',
          style: CustomTextStyles.poppins(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ProfilePage();
                  }));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Profile avatar
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/musixmatch_icon_black.png',
                        width: 45,
                        height: 60,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Magesh k',
                              style: CustomTextStyles.poppins(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Rookie',
                              style: CustomTextStyles.poppins(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Magesh k',
                              style: CustomTextStyles.poppins(
                                fontSize: 16,
                                color: Colors.white60,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                        size: 24,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 85,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF02f594),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Try Premium for Free',
                      style: CustomTextStyles.poppins(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white54,
                      child: Icon(
                        FontAwesomeIcons.heartCircleBolt,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Connected music',
                style: CustomTextStyles.poppins(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.spotify,
                      color: Colors.green,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Spotify',
                        style: CustomTextStyles.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text('Connect'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
