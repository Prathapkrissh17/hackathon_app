import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_app/src/common/font_style.dart';
import 'package:hackathon_app/src/common/spacing/app_spacing.dart';
import 'package:hackathon_app/src/features/profile/profile_page.dart';
import 'package:hackathon_app/src/features/settings/widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            /// profile widget
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

            /// premium widget
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
            gapH24,
            Text(
              'Connected music',
              style: CustomTextStyles.poppins(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SettingsTile(
              title: 'Spotify',
              leadingIcon: FontAwesomeIcons.spotify,
              leadingIconColor: Colors.green,
              trailingIcon: FontAwesomeIcons.spotify,
              trailingIconColor: Colors.green,
              showLeadingIcon: true,
              showTrailingButton: true,
              showTrailingIcon: false,
            ),
            const SettingsTile(
              title: 'Music Library',
              leadingIcon: FontAwesomeIcons.music,
              leadingIconColor: Colors.redAccent,
              trailingIcon: Icons.arrow_forward_ios_rounded,
              trailingIconColor: Colors.white,
              showLeadingIcon: true,
              showTrailingButton: false,
              showTrailingIcon: true,
            ),

            /// Customize area
            gapH24,
            Text(
              'Customize',
              style: CustomTextStyles.poppins(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            gapH16,
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: customizeData.length,
                itemBuilder: (context, index) {
                  final item = customizeData[index];
                  return SettingsTile(
                    title: item['title'],
                    leadingIcon: item['leadingIcon'],
                    leadingIconColor: item['leadingIconColor'],
                    showLeadingIcon: item['showLeadingIcon'],
                    trailingIcon: item['trailingIcon'],
                    trailingIconColor: item['trailingIconColor'],
                    showTrailingButton: item['showTrailingButton'],
                    showTrailingIcon: item['showTrailingIcon'],
                  );
                },
              ),
            ),

            /// Support area
            gapH24,
            Text(
              'Support',
              style: CustomTextStyles.poppins(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            gapH16,
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: supportData.length,
                itemBuilder: (context, index) {
                  final item = supportData[index];
                  return SettingsTile(
                    title: item['title'],
                    leadingIcon: item['leadingIcon'],
                    leadingIconColor: item['leadingIconColor'],
                    showLeadingIcon: item['showLeadingIcon'],
                    trailingIcon: item['trailingIcon'],
                    trailingIconColor: item['trailingIconColor'],
                    showTrailingButton: item['showTrailingButton'],
                    showTrailingIcon: item['showTrailingIcon'],
                  );
                },
              ),
            ),

            /// Stay in Touch Area
            gapH24,
            Text(
              'Stay in touch',
              style: CustomTextStyles.poppins(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            gapH16,
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: stayTouchData.length,
                itemBuilder: (context, index) {
                  final item = stayTouchData[index];
                  return SettingsTile(
                    title: item['title'],
                    leadingIcon: item['leadingIcon'],
                    leadingIconColor: item['leadingIconColor'],
                    showLeadingIcon: item['showLeadingIcon'],
                    trailingIcon: item['trailingIcon'],
                    trailingIconColor: item['trailingIconColor'],
                    showTrailingButton: item['showTrailingButton'],
                    showTrailingIcon: item['showTrailingIcon'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> customizeData = [
    {
      'title': 'FloatingLyrics™',
      'leadingIcon': FontAwesomeIcons.spotify,
      'leadingIconColor': Colors.green,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'Lockscreen',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'Lyrics',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'Notifications',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'App theme',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    // Add more settings data if needed
  ];
  final List<Map<String, dynamic>> supportData = [
    {
      'title': 'What\'s new',
      'leadingIcon': FontAwesomeIcons.spotify,
      'leadingIconColor': Colors.green,
      'showLeadingIcon': false,
      'trailingIcon': FontAwesomeIcons.externalLink,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'App Info',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'Get Help',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
    {
      'title': 'Give us feedback',
      'leadingIcon': FontAwesomeIcons.music,
      'leadingIconColor': Colors.redAccent,
      'showLeadingIcon': false,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': true,
    },
  ];
  final List<Map<String, dynamic>> stayTouchData = [
    {
      'title': 'Instagram',
      'leadingIcon': FontAwesomeIcons.instagram,
      'leadingIconColor': Colors.red,
      'showLeadingIcon': true,
      'trailingIcon': FontAwesomeIcons.externalLink,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': false,
    },
    {
      'title': 'Twitter',
      'leadingIcon': FontAwesomeIcons.twitter,
      'leadingIconColor': Colors.white,
      'showLeadingIcon': true,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': false,
    },
    {
      'title': 'Facebook',
      'leadingIcon': FontAwesomeIcons.facebookF,
      'leadingIconColor': const Color(0xFF1877F2),
      'showLeadingIcon': true,
      'trailingIcon': Icons.arrow_forward_ios_rounded,
      'trailingIconColor': Colors.white,
      'showTrailingButton': false,
      'showTrailingIcon': false,
    },
  ];
}
