import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:facebook_ui_clone/sections/header_button_section.dart';
import 'package:facebook_ui_clone/sections/room_section.dart';
import 'package:facebook_ui_clone/sections/status_section.dart';
import 'package:facebook_ui_clone/sections/story_section.dart';
import 'package:facebook_ui_clone/sections/suggestion_section.dart';
import 'package:facebook_ui_clone/widgets/appbar_button.dart';
import 'package:facebook_ui_clone/widgets/post_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          AppBarButton(
            buttonIcon: Icons.search,
            onPressed: () {},
          ),
          AppBarButton(
            buttonIcon: Icons.chat,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          StatusSection(),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          HeaderButtonSection(),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          RoomSection(),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          StorySection(),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          PostCard(
            postManAvatar: mohanlal,
            postMan: 'Mohanlal',
            postedDate: '5h',
            postTitle: 'Happy Diwaali!!',
            post: mohanlalDiwali,
            likes: '10',
            comments: '1',
            shares: '2',
          ),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          PostCard(
            postManAvatar: mammooty,
            postMan: 'Mammooty',
            postedDate: '1 day ago',
            postTitle: 'Bheeshma',
            post: mammootyBheeshma,
            likes: '20',
            comments: '5',
            shares: '3',
          ),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          SuggestionSection(),
          Divider(
            thickness: 10,
            color: Colors.grey.shade300,
          ),
          PostCard(
            postManAvatar: zendaya,
            postMan: 'Zendaya',
            postedDate: '4h',
            postTitle: 'Home coming',
            post: zendayaHomeComing,
            likes: '200',
            comments: '50',
            shares: '26',
          ),
        ],
      ),
    );
  }
}
