import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';

class TDifferentTimingWeather extends StatelessWidget {
  final String image;
  final String time;
  final int temp;

  const TDifferentTimingWeather({
    super.key,
    required this.image,
    required this.time,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 70,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.contain,
            )),
        SizedBox(height: S.spaceBtwItems / 2),
        Text(time,
            style:
                TextStyle(color: TColors.tertioryColor, fontSize: S.fSm / 1.2)),
        SizedBox(height: S.spaceBtwItems / 2),
        Text(temp.toString(),
            style: TextStyle(color: TColors.lightYellowColor, fontSize: S.fMd))
      ],
    );
  }
}
