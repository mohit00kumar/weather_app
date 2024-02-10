import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';

class MoreCityMenuButton extends StatelessWidget {
  const MoreCityMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.05)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: S.defaultSpace / 2),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More Cities',
                  style: TextStyle(color: TColors.lightYellowColor),
                ),
                Icon(
                  Iconsax.buildings5,
                  color: TColors.lightYellowColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
