// ignore_for_file: avoid_unnecessary_containers

import 'package:course_app/components/cards/recentcoursecard.dart';
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
          body: SafeArea(
            child: Container(
              child: RecentCourseCard(
                course: recentCourses[0],
              ),
            ),
          ),
        ));
  }
}
