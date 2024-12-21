import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';
import 'package:hackathon_app/src/common/spacing/app_spacing.dart';
import 'package:hackathon_app/src/features/home/data/songs_data.dart';

class HorizontalItemsScrollList extends StatelessWidget {
  const HorizontalItemsScrollList({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.maxFinite,
      height: height * 0.36, // Set a fixed height for the widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style:
                          context.headlineLarge!.copyWith(color: Colors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.withOpacity(0.4),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.border_top_outlined,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16), // Add spacing after the title
          SizedBox(
            height: height * 0.3, // Constrain the height of the ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sampleSongs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    height: height *
                        0.28, // Optional, matches the constrained height
                    width: width * 0.42,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (sampleSongs[index].imageUrl != null)
                          Container(
                            height: height *
                                0.16, // Optional, matches the constrained height
                            width: width * 0.36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                                Image.network(sampleSongs[index].imageUrl ?? '',
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                              if (loadingProgress == null) {
                                return child;
                              }
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                  color: Colors.grey,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Colors.red),
                                ),
                              );
                            }, errorBuilder: (context, error, stackTrace) {
                              return const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.close, color: Colors.white,),
                                  gapH4,
                                  Text('Failed to load image'),
                                ],
                              );
                            }),
                          )
                        else
                          Container(
                            height: height *
                                0.16, // Optional, matches the constrained height
                            width: width * 0.36,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        gapH2,
                        Text(
                          sampleSongs[index].songName ?? '',
                          style:
                              context.titleLarge!.copyWith(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        gapH2,
                        Text(
                          sampleSongs[index].artist ?? '',
                          style:
                              context.bodyLarge!.copyWith(color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
