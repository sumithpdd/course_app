import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/profile_screen.dart';
import 'searchfield_widget.dart';
import 'sidebar_button.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({required this.triggerAnimation, Key? key})
      : super(key: key);
  final VoidCallback triggerAnimation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          SearchFieldWidget(),
          const Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          const SizedBox(
            width: 16.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: const CircleAvatar(
              radius: 18.0,
              backgroundImage: AssetImage('asset/images/profile.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
