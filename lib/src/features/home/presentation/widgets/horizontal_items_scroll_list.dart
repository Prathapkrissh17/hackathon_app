import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';

class HorizontalItemsScrollList extends StatelessWidget {
  const HorizontalItemsScrollList({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.maxFinite,
      height: 260, // Set a fixed height for the widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: context.headlineLarge!.copyWith(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 16), // Add spacing after the title
          SizedBox(
            height: 140, // Constrain the height of the ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 160, // Optional, matches the constrained height
                    width: width * 0.42,
                    child: Column(
                      children: [
                        Container(
                          height: 140, // Optional, matches the constrained height
                          width: width * 0.36,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Text(
                          title,
                          style: context.headlineLarge!.copyWith(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),Text(
                          title,
                          style: context.headlineLarge!.copyWith(color: Colors.white),
                          maxLines: 2,
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
