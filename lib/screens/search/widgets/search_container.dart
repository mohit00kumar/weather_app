import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: Colors.grey.shade900),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: S.defaultSpace),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              size: 30,
              color: TColors.lightYellowColor,
            ),
            SizedBox(width: S.spaceBtwItems),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle:
                        TextStyle(color: Colors.grey.shade500, fontSize: 20),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
