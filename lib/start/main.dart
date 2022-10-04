import 'package:flutter/material.dart';
import '../routes.dart';
import 'package:pet_walk/home/home.dart';
import 'package:get/get.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: RouteGenerator.home,
      onGenerateRoute: RouteGenerator.generateRoute,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display FirstPage
      home: Home(),
    );
  }
}
