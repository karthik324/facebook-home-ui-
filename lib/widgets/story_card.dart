import 'package:facebook_ui_clone/widgets/appbar_button.dart';
import 'package:facebook_ui_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
    required this.image,
    required this.title,
    this.isCreateStory = false,
    this.avatar,
  }) : super(key: key);

  final String image;
  final String title;
  final bool isCreateStory;
  final String? avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Stack(
        children: [
          isCreateStory
              ? Positioned(
                  left: 2,
                  top: 2,
                  child: AppBarButton(
                    buttonIcon: Icons.add,
                    onPressed: () {},
                    iconColor: Colors.blue,
                  ),
                )
              : Avatar(
                  image: avatar!,
                  isOnline: false,
                  isBlueBorder: true,
                ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
