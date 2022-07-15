import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:facebook_ui_clone/sections/like_cmnt_share_section.dart';
import 'package:facebook_ui_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.postManAvatar,
    required this.postMan,
    required this.postedDate,
    required this.postTitle,
    required this.post,
    required this.likes,
    required this.shares,
    required this.comments,
  }) : super(key: key);

  final String postManAvatar;
  final String postMan;
  final String postedDate;
  final String postTitle;
  final String post;
  final String likes;
  final String comments;
  final String shares;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(
              image: postManAvatar,
              isOnline: false,
              isBlueBorder: false,
            ),
            title: Row(
              children: [
                Text(
                  postMan,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 17,
                )
              ],
            ),
            subtitle: Row(
              children: [
                Text(
                  postedDate,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.public,
                  size: 13,
                  color: Colors.grey,
                ),
              ],
            ),
            trailing: Icon(Icons.more_horiz, color: Colors.black),
          ),
          Text(
            postTitle,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 350,
            width: double.maxFinite,
            child: Image.network(
              post,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${likes}K',
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  '${comments}K Comments',
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  '${shares}K Shares',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          LikeCommentShareSection(),
        ],
      ),
    );
  }
}
