import 'package:bwa_cozy/pages/detailPages.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class ErrorPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/404.png",
                  width: 300,
                  height: 85,
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Where are you going?",
                  style:
                      blackTextColor.copyWith(fontSize: 24, fontWeight: medium),
                ),
                Text(
                  "Seems like the page that you were\n requested is already gone",
                  style:
                      greyTextColor.copyWith(fontSize: 16, fontWeight: light),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPages()));
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
                            "Back To Home",
                            style: whiteTextColor.copyWith(
                                fontSize: 18, fontWeight: medium),
                          )),
                        ),
                      ),
              ],
            ),
          )),
    );
  }
}
