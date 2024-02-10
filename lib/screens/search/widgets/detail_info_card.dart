import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/constants/sizes.dart';
import 'package:weather_app/screens/search/search.dart';

class DetailInfoCard extends StatelessWidget {
  const DetailInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: S.height * 0.25,
          width: S.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.05)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: S.defaultSpace / 2),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    CardDetail(
                      text: 'Precipitaion',
                      value: '30%',
                    ),
                    CardDetail(
                      text: 'Humidity',
                      value: '30%',
                    ),
                  ],
                ),
                Container(
                    height: S.height * 0.24,
                    width: 2,
                    color: Colors.grey.withOpacity(0.2)),
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    CardDetail(
                      text: 'Wind',
                      value: '8 km/h',
                    ),
                    CardDetail(
                      text: 'Pressure',
                      value: '840hPa',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
