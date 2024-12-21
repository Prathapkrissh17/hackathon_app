import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/font_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Magesh K',
                  style: CustomTextStyles.poppins(
                    fontSize: 46,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepOrange,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/musixmatch_icon_black.png',
                      width: 95,
                      height: 110,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
