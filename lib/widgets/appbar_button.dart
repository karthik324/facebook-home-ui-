import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
    required this.buttonIcon,
    required this.onPressed,
    this.iconColor = Colors.black,
  }) : super(key: key);

  final IconData buttonIcon;
  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 24,
        ),
      ),
    );
  }
}
