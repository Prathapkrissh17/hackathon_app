import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Home',
          style: context.titleLarge!.copyWith(color: Colors.orange),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.maxFinite,
              height: 260,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'For artists',
                          style:
                              context.titleLarge!.copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 160,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
              child: Column(
                children: [
                  const Text(
                    'The FloatingLyrics',
                  ),
                  const Text(
                    'Get lyrics instantly on top of Youtube, Spotify, Play Music and more',
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
            const Text(
              'Top 50 India',
            ),
          ],
        ),
      ),
    );
  }
}
