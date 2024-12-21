import 'package:flutter/cupertino.dart';
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
    return Column(
      children: [
        Text(
          title,
          style: context.titleLarge!.copyWith(color: Colors.white),
        ),
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
                      style: context.titleLarge!.copyWith(color: Colors.white),
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
      ],
    );
  }
}
