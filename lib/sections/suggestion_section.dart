import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:facebook_ui_clone/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: Column(
        children: [
          ListTile(
            title: Text(
              'People you may know',
            ),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(
            height: 350,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  mutualFriends: '6 Mutual friends',
                  name: 'Chris Brown',
                  pic: chrisBrownFrnd,
                ),
                SuggestionCard(
                  mutualFriends: '10 Mutual friends',
                  name: 'Da baby',
                  pic: daBaby,
                ),
                SuggestionCard(
                  mutualFriends: '20 Mutual friends',
                  name: 'Juice Wrld',
                  pic: juiceWrld,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
