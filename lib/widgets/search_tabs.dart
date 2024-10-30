import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            icon: Icons.search,
            text: 'All',
            isActive: true,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            icon: Icons.image,
            text: 'Images',
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            icon: Icons.map,
            text: 'Maps',
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            icon: Icons.article,
            text: 'News',
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            icon: Icons.shop,
            text: 'Shopping',
            isActive: false,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            icon: Icons.more_vert,
            text: 'More',
            isActive: false,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
