import 'package:flutter/material.dart';
import '../theme.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Profile Picture',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: greenColor,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/images/primary.png',
          width: 140,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Anne Margaritha',
          style: TextStyle(
              fontSize: 18,
              color: greenColor,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'UX Designer',
          style: TextStyle(
            fontSize: 16,
            color: greyColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
