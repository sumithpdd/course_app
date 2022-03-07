import 'package:flutter/material.dart';

import '../../model/course.dart';

class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({Key? key, required this.course}) : super(key: key);

  Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        width: 240,
        height: 240,
        decoration: BoxDecoration(
          gradient: course.background,
          borderRadius: BorderRadius.circular(41.0),
          boxShadow: [
            BoxShadow(
                color: course.background.colors[0].withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0),
            BoxShadow(
                color: course.background.colors[1].withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0)
          ],
        ),
      ),
    );
  }
}
