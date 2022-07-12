import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(dq),
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: 'What\'s on your mind?',
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
