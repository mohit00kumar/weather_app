import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: const AssetImage('assets/world map.png'),
          height: 300,
          fit: BoxFit.fill,
          color: Colors.grey.withOpacity(0.3),
        ),
        Image(
          image: const AssetImage('assets/sunny.png'),
          height: 150,
          fit: BoxFit.fill,
          color: Colors.yellow.withOpacity(0.1),
        ),
      ],
    );
  }
}