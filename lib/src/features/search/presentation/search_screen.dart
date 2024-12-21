import 'package:flutter/material.dart';
import 'package:hackathon_app/src/common/extensions/context_extension.dart';

/// Custom Search Delegate for workorder
class SongsCustomSearch extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        labelLarge: context.labelLarge,
      ),
      inputDecorationTheme: searchFieldDecorationTheme ??
          InputDecorationTheme(
            hintStyle: context.labelLarge,
            border: InputBorder.none,
          ),
    );
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_circle_left_sharp,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSearch(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildSearch(context);
  }

  /// Search results widget
  Widget buildSearch(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Get your favorite lyrics, now',
          style: context.headlineMedium!.copyWith(color: Colors.white),
        ),
        Text(
          'Search for songs, artists, albums',
          style: context.titleLarge!.copyWith(color: Colors.grey),
        ),
      ],
    ));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(
            Icons.close_outlined,
            size: 18,
          ),
        ),
    ];
  }
}
