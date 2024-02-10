import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/screens/bottom_nav_bar.dart';

void main() {
  runApp(
    const MyApp(),
  );
}
//----- mohit_fluttercoder -----//

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
