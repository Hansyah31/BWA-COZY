import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final City city;
  CityCard(this.city );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 120,
        height: 150,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopuler ? Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 30,
                    height: 50,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30)
                      )
                    ),
                    child: Image.asset("assets/icon/Icon_star_solid.png", width: 22,),alignment: Alignment.center,),
                ) : Container()
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              city.name,
              style: blackTextColor.copyWith(
                fontSize: 16,
              ),
            ) 
          ],
        ),
      ),
    );
  }
}
