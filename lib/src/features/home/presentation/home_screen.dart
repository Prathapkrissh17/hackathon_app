import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';
import 'package:hackathon_app/src/common/spacing/app_spacing.dart';
import 'package:hackathon_app/src/features/home/presentation/widgets/horizontal_items_scroll_list.dart';
import 'package:hackathon_app/src/features/navigation/presentation/navigation_page.dart';
import 'package:hackathon_app/src/features/settings/settings_page.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            icon: const Icon(
              size: 24,
              Icons.settings_rounded,
              color: Colors.white,
            ),
          )
        ],
        backgroundColor: Colors.black,
        title: Text(
          'Home',
          style: context.titleLarge!.copyWith(color: Colors.orange),
        ),
      ),
      body: SingleChildScrollView(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The FloatingLyrics',
                    style:
                        context.headlineMedium!.copyWith(color: Colors.white),
                  ),
                  gapH12,
                  Text(
                    'Get lyrics instantly on top of Youtube, Spotify, Play Music and more',
                    style: context.titleLarge!.copyWith(color: Colors.grey),
                  ),
                  gapH12,
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
            ),
            const HorizontalItemsScrollList(
              title: 'Top 50 India',
            ),
            const HorizontalItemsScrollList(
              title: 'Hot Weekly Songs',
            ),
            const HorizontalItemsScrollList(
              title: 'New Albums and Singles',
            ),
            const HorizontalItemsScrollList(
              title: 'Lyrics translated in more than 60 languages',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
