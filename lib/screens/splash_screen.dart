import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/widget/all.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  bool isButtonVisible = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              if (currentIndex != 2) {
                carouselController.animateToPage(2, curve: Curves.linear);
              }
            },
            child: Visibility(
              visible: !isButtonVisible,
              child: Text(
                "skip",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          CarouselSlider(
            carouselController: carouselController,
            items: const [
              SplashCard(
                cardTitle: "Numerous free trial courses",
                cardDisc: "Free courses for you to find your way to learning",
                imagePath: "assets/images/Illustration 06.png",
              ),
              SplashCard(
                cardTitle: "Quick and easy learning",
                cardDisc:
                    "Easy and fast learning at any time to help you improve various skills",
                imagePath: "assets/images/Illustration 10.png",
              ),
              SplashCard(
                cardTitle: "Create your own study plam",
                cardDisc:
                    "Study according to the study plan, make study more motivated",
                imagePath: "assets/images/Illustration 02.png",
              ),
            ],
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: currentIndex,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                  if (currentIndex == 2) {
                    isButtonVisible = true;
                  }else{
                    isButtonVisible = false;
                  }
                });
              },
            ),
          ),

          Visibility(
            visible: isButtonVisible,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20 , horizontal: 46),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(SIGNUP_SCREEN_ROUTE);
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                        backgroundColor: MaterialStateProperty.all(
                          HexColor("#3D5CFF"),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),),
                      ),
                      child: Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(LOGIN_SCREEN_ROUTE);
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                        backgroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),),
                      ),
                      child: Text(
                        "Log in",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
