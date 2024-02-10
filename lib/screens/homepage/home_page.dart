import 'package:flutter/material.dart';
import 'package:weather_app/constants/sizes.dart';
import 'package:weather_app/screens/homepage/widgets/center_weather_display.dart';
import 'package:weather_app/screens/homepage/widgets/different_timing_weather.dart';
import 'package:weather_app/screens/homepage/widgets/header_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    S(mediaQueryData: MediaQuery.of(context));
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(S.defaultSpace),
            child: Column(
              children: [
                SizedBox(height: S.spaceBtwSections * 2),
                const THeaderSection(),
                SizedBox(height: S.spaceBtwItems),
                const CenterWeatherDisplay(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: S.defaultSpace),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TDifferentTimingWeather(
                          image: 'assets/storm.png', time: '01.00', temp: 13),
                      TDifferentTimingWeather(
                          image: 'assets/rain.png', time: '04.00', temp: 10),
                      TDifferentTimingWeather(
                          image: 'assets/snow.png', time: '06.00', temp: 9),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
