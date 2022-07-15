import 'package:flutter/material.dart';

Widget headerButton({
  required IconData icon,
  required String buttonName,
  required VoidCallback onPressed,
  required Color color,
}) {
  return TextButton.icon(
    onPressed: onPressed,
    icon: Icon(
      icon,
      color: color,
    ),
    label: Text(
      buttonName,
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

class HeaderButtonSection extends StatelessWidget {
  const HeaderButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            icon: Icons.video_call,
            buttonName: 'Live',
            onPressed: () {},
            color: Colors.red,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          headerButton(
            icon: Icons.photo_library,
            buttonName: 'Photo',
            onPressed: () {},
            color: Colors.green,
          ),
          VerticalDivider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          headerButton(
            icon: Icons.video_call,
            buttonName: 'Room',
            onPressed: () {},
            color: Colors.indigo.shade400,
          ),
        ],
      ),
    );
  }
}
