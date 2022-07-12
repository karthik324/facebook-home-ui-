import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:facebook_ui_clone/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            isCreateStory: true,
            image: dq,
            title: 'Add to Story',
          ),
          StoryCard(
            avatar: zendaya,
            image: zendayasPost,
            title: 'Zendaya',
          ),
          StoryCard(
            avatar: mohanlal,
            image: mohanlalsPost,
            title: 'Mohanlal',
          ),
          StoryCard(
            avatar: mammooty,
            image: mammootysPost,
            title: 'Mammooty',
          ),
          StoryCard(
            avatar: prithviRaj,
            image: prithviRajsPost,
            title: 'Prithviraj',
          ),
          StoryCard(
            avatar: nivinPauly,
            image: nivinsPost,
            title: 'Nivin Pauly',
          ),
        ],
      ),
    );
  }
}
