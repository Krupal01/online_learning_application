import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/widget/bottombar_search_button.dart';
import 'package:online_learning_application/widget/main_bottombar.dart';
import 'package:online_learning_application/widget/utils.dart';

import '../routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hii, Kristin",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      "Let's start learning",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 200,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Learned today",
                                style: greyText16,
                              ),
                              Expanded(
                                child: Container(
                                  height: 0,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "My courses",
                                  style: primaryText16,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "46 min",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              const Text(
                                "/",
                                style: greyText16,
                              ),
                              Text(
                                "60 min",
                                style: greyText16,
                              ),
                            ],
                          ),
                          LinearProgressIndicator(
                            minHeight: 5,
                            backgroundColor: custom_gray,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                Colors.orange),
                            value: 0.4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  space(vertical: 20),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.cyan,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 180,
                            width: 250,
                            child: Text(
                              index.toString(),
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  space(vertical: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Learning Plan",
                        style: blackText24,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) => ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          leading: SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator(
                              value: 0.4,
                              backgroundColor: custom_gray,
                              color: Colors.orange,
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                "hii$index",
                                style: blackText20,
                              ),
                              Expanded(child: Container()),
                              const Text(
                                "40",
                                style: blackText16,
                              ),
                              const Text(
                                "/",
                                style: greyText16,
                              ),
                              const Text(
                                "40",
                                style: greyText16,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Card(
                        clipBehavior: Clip.hardEdge,
                        color: Colors.cyan,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 250,
                            width: 350,
                            child: Text(
                              index.toString(),
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MainBottomBar(
        selected: 1,
        onItemSelected: (index) {
          Routes.bottomNavigateTo(index, context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomSearchButton(
        onSearchPressed: () => Routes.bottomNavigateTo(5, context),
      ),
    );
  }
}
