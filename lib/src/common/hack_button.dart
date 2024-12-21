import 'package:flutter/material.dart';

class HackButton extends StatelessWidget {
  const HackButton({
    super.key,
    required this.verticalSpacing,
    required this.color,
    required this.horizontalSpacing,
    required this.iconData,
    required this.title,
  });

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
            Radius.circular(12), // Adjust the radius for the rounded corners
          ),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(iconData, size: 22, color: Colors.white),
            const Spacer(),
            Center(
                child: Text(
              title,
              textAlign: TextAlign.center,
              // style: ,
            )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
