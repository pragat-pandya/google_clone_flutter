import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab({
    super.key,
    required this.icon,
    required this.text,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive ? blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: isActive ? blueColor : Colors.grey,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        isActive
            ? Container(
                height: 3,
                width: 40,
                color: blueColor,
              )
            : Container(),
      ],
    );
  }
}
