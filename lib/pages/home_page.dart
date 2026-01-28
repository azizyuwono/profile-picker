// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/profile_header.dart';
import '../widgets/photo_grid.dart';
import '../widgets/update_photo_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: screenColor,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const ProfileHeader(),
                const SizedBox(
                  height: 70,
                ),
                const PhotoGrid(),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 224,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return const UpdatePhotoSheet();
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Update Profile',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: greenColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 76,
                ),
              ],
            ),
          ),
        )));
  }
}
