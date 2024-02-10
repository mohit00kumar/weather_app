import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/common/celcius_symbol.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';

class CenterCard extends StatelessWidget {
  final String cityName;
  final String image;
  final int temp;
  final String weather;

  const CenterCard({
    super.key,
    required this.cityName,
    required this.image,
    required this.temp,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.05)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(cityName,
                  style: TextStyle(
                      color: TColors.lightYellowColor, fontSize: S.fSm / 1.2)),
              SizedBox(
                height: 70,
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(temp.toString(),
                          style: TextStyle(
                              color: TColors.lightYellowColor,
                              fontSize: S.fXl)),
                      const SizedBox(width: 5),
                      const CelciusSymbol(
                          height: 15,
                          width: 15,
                          borderWidth: 3,
                          color: TColors.yellowColor,
                          margin: 10),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Text(weather,
                      style: TextStyle(
                          color: TColors.lightYellowColor, fontSize: S.fXl))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
