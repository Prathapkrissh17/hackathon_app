import 'package:flutter/material.dart';

class HackButton extends StatelessWidget {
  const HackButton({
    super.key,
    required this.verticalSpacing,
    required this.color,
    required this.horizontalSpacing,
    required this.iconData,
    required this.title,
    required this.onTap,
    required this.textColor,
    required this.textSize,
    required this.iconColor,
  });

  final Color iconColor;
  final double textSize;

  final Color textColor;
  final Function() onTap;

  final String title;
  final IconData iconData;
  final double verticalSpacing;
  final Color color;
  final double horizontalSpacing;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(
          vertical: verticalSpacing,
          horizontal: horizontalSpacing,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(iconData, size: 22, color: iconColor),
            const Spacer(),
            Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: textSize,
              ),
            )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
