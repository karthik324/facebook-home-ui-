import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.image,
    this.isOnline = true,
    this.isBlueBorder = false,
  }) : super(key: key);

  final String image;
  final bool isOnline;
  final bool isBlueBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isBlueBorder ? Colors.blue : Colors.transparent,
          width: 2,
        ),
      ),
      margin: EdgeInsets.all(4),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundImage: NetworkImage(image),
          ),
          isOnline
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
