import 'package:bwa_cozy/pages/homePages.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // bottom: false => digunakan untuk iphone footer hingga kebawah
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/bottom.png")),
              Padding(
        padding: const EdgeInsets.only(
              top: 50,
              left: 30,
        ),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 50,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Find Cozy House\nto Stay and Happy",
                  style: blackTextColor.copyWith(fontSize: 24, fontWeight: bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                  style: greyTextColor.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height:50,
                  width: 210,
                  child: RaisedButton(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePages()));
                    },
                    child: Text("Explore Now", style: whiteTextColor.copyWith(
                      fontSize: 18, fontWeight: medium,
                    ),),
                  ),
                ),
              ],
        ),
      ),
            ],
          )),
    );
  }
}
