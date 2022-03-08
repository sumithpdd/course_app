// ignore_for_file: avoid_unnecessary_containers

import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';

import 'components/homescreennavbar.dart';
import 'components/lists/explorecourselist.dart';
import 'components/lists/recentcourselist.dart';
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Recents",
                          style: kLargeTitleStyle,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "23 courses, more coming",
                          style: kSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RecentCourseList(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 25.0, bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Explore",
                          style: kTitle1Style,
                        ),
                      ],
                    ),
                  ),
                  ExploreCourseList(),
                ],
              ),
            ),
          ),
        ));
  }
}
