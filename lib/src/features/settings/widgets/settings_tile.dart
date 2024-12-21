import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/font_style.dart';

class SettingsTile extends StatelessWidget {
  final String title;

  final bool showLeadingIcon;

  final bool showTrailingButton;

  final bool showTrailingIcon;

  final IconData leadingIcon;

  final Color leadingIconColor;

  final IconData trailingIcon;

  final Color trailingIconColor;

  const SettingsTile({
    super.key,
    required this.title,
    required this.showLeadingIcon,
    required this.showTrailingIcon,
    required this.showTrailingButton,
    required this.leadingIcon,
    required this.leadingIconColor,
    required this.trailingIcon,
    required this.trailingIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          if (showLeadingIcon) ...[
            Icon(
              leadingIcon,
              color: leadingIconColor,
              size: 30,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
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
          if (showTrailingIcon)
            Icon(
              trailingIcon,
              color: trailingIconColor,
              size: 18,
            ),
        ],
      ),
    );
  }
}
