import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';


class THeaderSection extends StatelessWidget {
  const THeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: S.height * 0.1,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '22,Feb 2024',
                style:
                    TextStyle(color: TColors.lightYellowColor, fontSize: S.fSm),
              ),
              Row(
                children: [
                  const Icon(
                    Iconsax.location5,
                    color: TColors.lightYellowColor,
                  ),
                  SizedBox(width: S.spaceBtwItems / 2),
                  Text(
                    'Ludhiana, ',
                    style: TextStyle(
                        color: TColors.lightYellowColor, fontSize: S.fLg),
                  ),
                  Text(
                    'India',
                    style: TextStyle(
                        color: TColors.tertioryColor, fontSize: S.fLg),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
