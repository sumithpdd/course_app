import 'package:flutter/material.dart';

import '../constants.dart';
import 'searchfield_widget.dart';
import 'sidebar_button.dart';

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
