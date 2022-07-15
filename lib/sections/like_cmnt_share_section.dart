import 'package:facebook_ui_clone/sections/header_button_section.dart';
import 'package:flutter/material.dart';

class LikeCommentShareSection extends StatelessWidget {
  const LikeCommentShareSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            icon: Icons.thumb_up,
            buttonName: 'Like',
            onPressed: () {},
            color: Colors.blue,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          headerButton(
            icon: Icons.comment,
            buttonName: 'Comment',
            onPressed: () {},
            color: Colors.grey,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          headerButton(
            icon: Icons.share_rounded,
            buttonName: 'Share',
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
