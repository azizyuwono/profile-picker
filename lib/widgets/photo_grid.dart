import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 38,
      runSpacing: 40,
      children: [
        Image.asset(
          'assets/images/item1.png',
          width: 80,
        ),
        Image.asset(
          'assets/images/item2.png',
          width: 80,
        ),
        Image.asset(
          'assets/images/item3.png',
          width: 80,
        ),
        Image.asset(
          'assets/images/item4.png',
          width: 80,
        ),
        Image.asset(
          'assets/images/item5.png',
          width: 80,
        ),
        Image.asset(
          'assets/images/item6.png',
          width: 80,
        ),
      ],
    );
  }
}
