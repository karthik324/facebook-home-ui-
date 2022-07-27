import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  SuggestionCard({
    Key? key,
    this.name,
    this.pic,
    this.mutualFriends,
  }) : super(key: key);

  final String? name;
  final String? pic;
  final String? mutualFriends;

  @override
  Widget build(BuildContext context) {
    Widget suggestionImage() {
      return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              10,
            ),
            topRight: Radius.circular(
              10,
            ),
          ),
          child: Image.network(
            pic!,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget suggestionDetails() {
      return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          color: Colors.grey.shade200,
          height: 120,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  name!,
                ),
                subtitle: Text(
                  mutualFriends!,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                    ),
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_moderator,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Add friend',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.grey.shade300,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Remove',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      width: 240,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }
}
