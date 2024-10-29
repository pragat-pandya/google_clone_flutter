import 'package:flutter/material.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/responsive/mobile_screen_layout.dart';
import 'package:google_clone_tutorial/responsive/responsive_layout_screen.dart';
import 'package:google_clone_tutorial/responsive/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
