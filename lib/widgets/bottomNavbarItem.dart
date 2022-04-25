import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {

  final String imageUrl;
  final   bool isActive;
  BottomNavbarItem({
    required this.imageUrl, 
    required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
        imageUrl,
        height: 26,
        ),
        Spacer(),
        isActive ? Container(
          height: 2,
          width: 30,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: 
            BorderRadius.circular(1000)
          ),
        ) : Container()
      ],
    );
  }
}