import 'package:bwa_cozy/models/guidance.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class GuidanceCard extends StatelessWidget {
  final Guidance guidance;

  GuidanceCard(this.guidance);
  @override
  Widget build(BuildContext context) {
     return Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: 80,
          height: 80,
          child: (Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset(
                  guidance.imageUrl,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30))),
                  alignment: Alignment.center,
                ),
              ),
            ],
          )),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            guidance.text1,
            style: blackTextColor.copyWith(fontSize: 18, fontWeight: medium),
          ),
          Text(
            'Updated ${guidance.updated}',
            style: greyTextColor.copyWith(
                fontSize: 14, fontWeight: light),
          ),
          
        ],
      ),
      Spacer(),
      IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right, color: greyColor,))
    ]);
  }
}