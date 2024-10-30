import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone_tutorial/colors.dart';
import 'package:google_clone_tutorial/widgets/mobile/mobile_footer.dart';
import 'package:google_clone_tutorial/widgets/search.dart';
import 'package:google_clone_tutorial/widgets/translation_buttons.dart';
import 'package:google_clone_tutorial/widgets/web/search_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          title: SizedBox(
            width: size.width * 0.34,
            child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                tabs: [
                  Tab(text: 'ALL'),
                  Tab(text: 'IMAGES'),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Gamil',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Images',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/more-apps.svg',
                colorFilter:
                    const ColorFilter.mode(primaryColor, BlendMode.srcIn),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
                right: 10,
              ),
              child: MaterialButton(
                color: const Color(0xff1A73EB),
                onPressed: () {},
                child: const Text(
                  'Sing in',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Search(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    MobileFooter(),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
