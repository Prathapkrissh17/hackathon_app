import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_app/src/common/font_style.dart';

class SettingsTile extends StatelessWidget {
  final String title;

  final bool showLeadingIcon;

  final bool showTrailingButton;

  final bool showTrailingIcon;

  const SettingsTile({
    super.key,
    required this.title,
    required this.showLeadingIcon,
    required this.showTrailingIcon,
    required this.showTrailingButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          if (showLeadingIcon)
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
              title,
              style: CustomTextStyles.poppins(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (showTrailingButton)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1DB954),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('Connect'),
            ),
          // if (showTrailingIcon)
          // Icon(
          //   icons.arrow_back_rounded,
          //   color: Colors.green,
          //   size: 30,
          // ),
        ],
      ),
    );
  }
}
