import 'package:bwa_cozy/pages/errorPages.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/facilitiesCard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPages extends StatelessWidget {
  Widget build(BuildContext context) {
    openUrl(String value) async {
      try {
        await launch(value);
      } catch (e) {
        //TODO: ini seharusnya pages nya mengarah, tapi ketika disalahkan urlnya malah error (belum ditemukan harus bisa SOLVED !!)
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPages()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/pic6.png",
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),

            //NOTED: Detail Page Header
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        //TODO : Tittle Kuratekeso Hott
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuretakeso Hott",
                                  style: blackTextColor.copyWith(
                                    fontSize: 22,
                                    fontWeight: regular,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$52",
                                      style: primaryTextColor,
                                    ),
                                    Text(" / month")
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset("assets/icon/Icon_star_solid.png",
                                    width: 20),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset("assets/icon/Icon_star_solid.png",
                                    width: 20),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset("assets/icon/Icon_star_solid.png",
                                    width: 20),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset("assets/icon/Icon_star_solid.png",
                                    width: 20),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  "assets/icon/Icon_star_solid.png",
                                  width: 20,
                                  color: greyColor,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //TODO : MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          "Main Facilities",
                          style: blackTextColor.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FacilitiesCard(
                              "assets/icon/icon_kitchen.png", 2, "kithcen"),
                          FacilitiesCard(
                              "assets/icon/icon_bedroom.png", 2, "bedroom"),
                          FacilitiesCard(
                              "assets/icon/icon_lemari.png", 2, "Big Lemari"),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //TODO : PHOTOS
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          "Photos",
                          style: blackTextColor.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset(
                              "assets/images/pic7.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/pic8.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              "assets/images/pic9.png",
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //TODO : LOCATION
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Text(
                          "Location",
                          style: blackTextColor.copyWith(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jln. Kappan Sukses No. 20 \nPalembang",
                              style: greyTextColor.copyWith(fontSize: 14),
                            ),
                            InkWell(
                                onTap: () {
                                  launch(
                                      "https://goo.gl/maps/LrNUYFZfo8ihCS1Y8");
                                },
                                child: Icon(
                                  Icons.location_on,
                                  color: greyColor,
                                ))
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ErrorPages()));
                        },
                        child: Container(
                          child: Text(
                            "Error Page",
                            style: greyTextColor.copyWith(
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      InkWell(
                        onTap: () async{
                          await launchUrl(Uri.parse("tel:+6285930172346"));
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: edge),
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: primaryColor),
                          child: Center(
                              child: Text(
                            "Book Now",
                            style: whiteTextColor.copyWith(
                                fontSize: 18, fontWeight: medium),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            //TODO : Button Back
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/icon/icon_back.png",
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    "assets/icon/icon_lovee.png",
                    width: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
