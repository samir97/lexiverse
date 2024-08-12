import 'package:flutter/material.dart';
import 'package:lexiverse/history/favourites_tab.dart';
import 'package:lexiverse/history/lessons_tab.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('History'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Lessons'),
              Tab(text: 'Favorites'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LessonsTab(),
            FavouritesTab(),
          ],
        ),
      ),
    );
  }
}
