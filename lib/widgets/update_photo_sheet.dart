import 'package:flutter/material.dart';
import '../theme.dart';

class UpdatePhotoSheet extends StatelessWidget {
  const UpdatePhotoSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      color: whiteColor,
      padding: const EdgeInsets.symmetric(
        vertical: 50,
      ),
      child: Column(
        children: [
          Text(
            'Update Photo',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: greenColor,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text('You are only able to change\nthe picture profile once',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: greyColor),
              textAlign: TextAlign.center),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 224,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: orangeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Profile updated successfully!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 16,
                  color: whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
