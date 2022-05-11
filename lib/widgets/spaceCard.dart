import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/pages/detailPages.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPages()));
      },
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: (Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    space.imageUrl,
                    height: 110,
                    fit: BoxFit.cover,
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
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icon/Icon_star_solid.png",
                            width: 22,
                          ),
                          Text(
                            "${space.rating}/5",
                            style: whiteTextColor,
                          )
                        ],
                      ),
                    ),
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
              space.name,
              style: blackTextColor.copyWith(fontSize: 18, fontWeight: medium),
            ),
            Row(
              children: [
                Text(
                  "\$${space.price}",
                  style: primaryTextColor.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                Text(" month"),
              ],
            ),
            Text(
              "${space.country}, ${space.city}",
              style: greyTextColor.copyWith(fontSize: 16),
            ),
          ],
        )
      ]),
    );
  }
}
