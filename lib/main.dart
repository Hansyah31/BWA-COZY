import 'package:bwa_cozy/pages/splashPages.dart';
import 'package:bwa_cozy/providers/space_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProviders(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
