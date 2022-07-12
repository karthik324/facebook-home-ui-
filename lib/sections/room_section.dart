import 'package:facebook_ui_clone/constants/constants.dart';
import 'package:facebook_ui_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(9),
        shrinkWrap: true,
        children: [
          CreateRoomButton(),
          Avatar(
            image: dq,
          ),
          Avatar(
            image: mohanlal,
          ),
          Avatar(
            image: mammooty,
          ),
          Avatar(
            image: prithviRaj,
          ),
          Avatar(
            image: nivinPauly,
          ),
          Avatar(
            image: zendaya,
          ),
        ],
      ),
    );
  }
}

class CreateRoomButton extends StatelessWidget {
  const CreateRoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(
          color: Colors.blue,
        ),
      ),
      onPressed: () {},
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        'Create \nRoom',
        textAlign: TextAlign.center,
      ),
    );
  }
}
