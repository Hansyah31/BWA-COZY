import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/guidance.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottomNavbarItem.dart';
import 'package:bwa_cozy/widgets/cityCard.dart';
import 'package:bwa_cozy/widgets/guidanceCard.dart';
import 'package:bwa_cozy/widgets/spaceCard.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style:
                    greyTextColor.copyWith(fontSize: 16, fontWeight: light),
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
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                        id: 1,
                        name: "Kuretakeso Hott",
                        imageUrl: "assets/images/image.png",
                        price: "52",
                        city: "Bandung",
                        country: "Germany",
                        rating: 4),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  SpaceCard(
                    Space(
                        id: 2,
                        name: "Roemah Nenek",
                        imageUrl: "assets/images/image1.png",
                        price: "11",
                        city: "Seattle",
                        country: "Bogor",
                        rating: 5),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  SpaceCard(
                    Space(
                        id: 3,
                        name: "Darrling How",
                        imageUrl: "assets/images/image2.png",
                        price: "20",
                        city: "Jakarta",
                        country: "Indonesia",
                        rating: 3),
                  ),
                ],
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
                style: blackTextColor.copyWith(
                    fontSize: 16, fontWeight: regular),
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
                width: MediaQuery.of(context).size.width-(2 * edge),
                margin: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: 
                  BorderRadius.circular(23)
                ),
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
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
    );
  }
}
