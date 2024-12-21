import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';
import 'package:hackathon_app/src/common/spacing/app_spacing.dart';
import 'package:hackathon_app/src/features/home/data/songs_data.dart';
import 'package:hackathon_app/src/features/home/domain/song_model.dart';
import 'package:hackathon_app/src/features/home/presentation/widgets/horizontal_items_scroll_list.dart';
import 'package:hackathon_app/src/features/navigation/presentation/navigation_page.dart';
import 'package:hackathon_app/src/features/settings/settings_page.dart';

class ContributeScreen extends StatefulWidget {
  const ContributeScreen({super.key});

  @override
  State<ContributeScreen> createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  List<Song> loadedFrames = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      loadedFrames = await loadFrames();
      setState(() {});
    });
    print(loadedFrames);
    super.initState();
  }

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
                itemCount: loadedFrames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loadedFrames[index].songName ?? '',
                          style:
                              context.titleLarge!.copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network(
                                fit: BoxFit.fitWidth,
                                loadedFrames[index].imageUrl ?? ''),
                          ),
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
                    'Namma Flutter Dash',
                    style:
                        context.headlineMedium!.copyWith(color: Colors.white),
                  ),
                  gapH12,
                  Text(
                    'Hi, I\'m dash from Namma Flutter. Say hello to me. I\'ll give Pizza to you.',
                    style: context.titleLarge!.copyWith(color: Colors.grey),
                  ),
                  gapH12,
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.fitWidth,
                      'assets/images/dash.jpg',
                    ),
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
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
