import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilitiesCard extends StatelessWidget {
  final String urlImage;
  final int paymentText;
  final String monthText;
  FacilitiesCard(this.urlImage, this.paymentText, this.monthText);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 12,
        ),
        Image.asset(
         urlImage,
          width: 31,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: '\$$paymentText ',
              style: primaryTextColor.copyWith(fontSize: 16),
              children: [
                TextSpan(
                    text: monthText,
                    style: greyTextColor.copyWith(fontSize: 16))
              ]),
        )
      ],
    );
  }
}
