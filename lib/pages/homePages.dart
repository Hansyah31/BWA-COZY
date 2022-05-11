import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/guidance.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/pages/detailPages.dart';
import 'package:bwa_cozy/providers/space_providers.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottomNavbarItem.dart';
import 'package:bwa_cozy/widgets/cityCard.dart';
import 'package:bwa_cozy/widgets/guidanceCard.dart';
import 'package:bwa_cozy/widgets/spaceCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bwa_cozy/models/space.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProviders>(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: (ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            //TODO: Header Explore Now
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Explore Now",
                style:
                    blackTextColor.copyWith(fontSize: 24, fontWeight: medium),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Mencari kosan yang cozy",
                style: greyTextColor.copyWith(fontSize: 16, fontWeight: light),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //TODO: POPULAR CITIES
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Popular Cities",
                style: blackTextColor.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(City(
                      id: 1,
                      name: "Jakarta",
                      imageUrl: "assets/images/pic.png",
                      isPopuler: false)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 2,
                      name: "Bandung",
                      imageUrl: "assets/images/pic1.png",
                      isPopuler: true)),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(City(
                      id: 3,
                      name: "surabaya",
                      imageUrl: "assets/images/pic2.png",
                      isPopuler: false)),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //TODO: RECOMMMENDED SPACE
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Recommended Space",
                style: blackTextColor.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space>? data = snapshot.data as List<Space>?;
                    return Column(
                        children: data!
                            .map(
                              (e) => Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailPages()),
                                    );
                                  },
                                  child: SpaceCard(
                                    Space(
                                      id: e.id,
                                      name: e.name,
                                      imageUrl: e.imageUrl,
                                      price: e.price,
                                      city: e.city,
                                      country: e.country,
                                      rating: e.rating,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList());
                  }
                  return Center(
                    child: CircularProgressIndicator(
                        // strokeWidth: 8,
                        ),
                  );
                },
              ),
            ),
            //TODO Tips & Guidance
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Tips & Guidance",
                style:
                    blackTextColor.copyWith(fontSize: 16, fontWeight: regular),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  GuidanceCard(Guidance(
                      id: 1,
                      imageUrl: "assets/images/tips1.png",
                      text1: "City Guidelines",
                      updated: "20 Apr")),
                  SizedBox(
                    height: 20,
                  ),
                  GuidanceCard(Guidance(
                      id: 2,
                      imageUrl: "assets/images/tips2.png",
                      text1: "Jakarta Fairship",
                      updated: "11 Dec"))
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            )
          ],
        )),
      ),
      //TODO Navbar ButtonItem
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: "assets/icon/Icon_home.png",
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: "assets/icon/Icon_mail.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: "assets/icon/Icon_card.png",
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: "assets/icon/Icon_love.png",
              isActive: false,
            ),
          ],
        ),
      ),
      //TODO Location Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
