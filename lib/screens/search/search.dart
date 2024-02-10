import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/sizes.dart';
import 'package:weather_app/screens/search/widgets/appbar.dart';
import 'package:weather_app/screens/search/widgets/background_image.dart';
import 'package:weather_app/screens/search/widgets/center_card.dart';
import 'package:weather_app/screens/search/widgets/detail_info_card.dart';
import 'package:weather_app/screens/search/widgets/more_city_menu_button.dart';
import 'package:weather_app/screens/search/widgets/search_container.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
              const TAppBarSerachSection(),
              SizedBox(height: S.spaceBtwSections),
              const TSearchContainer(),
              SizedBox(height: S.spaceBtwSections * 2),
              Stack(
                children: [
                  const BackgroundImage(),
                  Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CenterCard(
                              cityName: 'Shimla',
                              image: 'assets/snow.png',
                              temp: -5,
                              weather: 'Snow'),
                          CenterCard(
                              cityName: 'Pune',
                              image: 'assets/rain.png',
                              temp: 13,
                              weather: 'Rain'),
                        ],
                      ),
                      SizedBox(height: S.spaceBtwItems),
                      const MoreCityMenuButton(),
                      SizedBox(height: S.spaceBtwSections),
                      const Stack(
                        children: [
                          DetailInfoCard(),
                          Positioned(
                            left: 10,
                            right: 1,
                            top: 0,
                            child: SizedBox(
                              height: 70,
                              child: Image(
                                image: AssetImage('assets/cloud.png'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*

Positioned(
                                    left: 5,
                                    right: 5,
                                    top: 0,
                                    child: SizedBox(
                                        height: 70,
                                        child: Image(
                                          image: AssetImage('assets/sunny.png'),
                                        )),
                                  ),

 */

class CardDetail extends StatelessWidget {
  final String text;
  final String value;
  const CardDetail({
    super.key,
    required this.text,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 16, color: TColors.lightYellowColor.withOpacity(0.5)),
        ),
        SizedBox(height: S.spaceBtwItems),
        Text(
          value,
          style: const TextStyle(fontSize: 20, color: TColors.lightYellowColor),
        ),
      ],
    );
  }
}
