import 'package:flutter/material.dart';
import 'package:weather_app/common/celcius_symbol.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';

class CenterWeatherDisplay extends StatelessWidget {
  const CenterWeatherDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: S.height * 0.5,
      child: Stack(
        children: [
          Image(
            image: const AssetImage('assets/world map.png'),
            color: Colors.grey.withOpacity(0.3),
          ),
          Positioned(
            top: 10,
            left: 50,
            right: 50,
            child: Column(
              children: [
                const SizedBox(
                    height: 200,
                    child: Image(
                      image: AssetImage('assets/storm.png'),
                      fit: BoxFit.contain,
                    )),
                SizedBox(height: S.spaceBtwItems),
                Text(
                  'Thunder',
                  style: TextStyle(
                      color: TColors.lightYellowColor, fontSize: S.fLg),
                ),
                SizedBox(height: S.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '13',
                      style: TextStyle(
                          color: TColors.lightYellowColor,
                          fontSize: S.fXxl * 3,
                          fontWeight: FontWeight.bold),
                    ),
                    const CelciusSymbol(
                      height: 25,
                      width: 25,
                      color: TColors.yellowColor,
                      margin: 50,
                    ),
                  ],
                ),
                SizedBox(height: S.spaceBtwSections),
              ],
            ),
          )
        ],
      ),
    );
  }
}
