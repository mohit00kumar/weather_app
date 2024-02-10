import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';


class TAppBarSerachSection extends StatelessWidget {
  const TAppBarSerachSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios,
              color: TColors.lightYellowColor, size: 20),
        ),
        SizedBox(width: S.spaceBtwSections * 2),
        Text(
          'Search for city',
          style: TextStyle(
              color: TColors.lightYellowColor, fontSize: S.fXxl / 1.2),
        ),
        const Spacer(),
      ],
    );
  }
}
