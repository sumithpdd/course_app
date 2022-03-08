// ignore_for_file: avoid_unnecessary_containers

import 'package:course_app/components/cards/recentcoursecard.dart';
import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';

import 'model/course.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: kBackgroundColor,
            child: SafeArea(
              child: Column(
                children: [
                  const HomeScreenNavBar(),
                  RecentCourseCard(
                    course: recentCourses[0],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SidebarButton(),
        SearchFieldWidget(),
        const Icon(
          Icons.notifications,
          color: kPrimaryLabelColor,
        ),
        const SizedBox(
          width: 16.0,
        ),
        const CircleAvatar(
          radius: 18.0,
          backgroundImage: AssetImage('asset/images/profile.jpg'),
        ),
      ],
    );
  }
}

class SidebarButton extends StatelessWidget {
  const SidebarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print("Sidebar button pressed");
      },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: const BoxConstraints(
        maxWidth: 40.0,
        maxHeight: 40.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: [
            const BoxShadow(
              color: kShadowColor,
              offset: const Offset(0, 12),
              blurRadius: 16.0,
            )
          ],
        ),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          color: kPrimaryLabelColor,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 14.0,
        ),
      ),
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 33.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              const BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              cursorColor: kPrimaryLabelColor,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.search,
                  color: kPrimaryLabelColor,
                  size: 20.0,
                ),
                border: InputBorder.none,
                hintText: "Search for courses",
                hintStyle: kSearchPlaceholderStyle,
              ),
              style: kSearchTextStyle,
              onChanged: (newText) {
                print(newText);
              },
            ),
          ),
        ),
      ),
    );
  }
}
