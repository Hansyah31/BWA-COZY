import 'dart:convert';

import 'package:bwa_cozy/models/space.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class SpaceProviders extends ChangeNotifier{
  Future<List<Space>> getRecommendedSpaces()async{
    var results = 
    await http.get(Uri.parse('https://bwa-cozy.herokuapp.com/recommended-spaces'));
    print(results.body);
    print(results.statusCode);
    List<dynamic> json = jsonDecode(results.body);
    var spaceList = json.map((e) => Space.fromJson(e)).toList();
    return spaceList;
  }
}