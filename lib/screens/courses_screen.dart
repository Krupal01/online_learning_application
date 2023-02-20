import 'package:flutter/material.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/widget/course_card.dart';
import 'package:online_learning_application/widget/filter_searchbar.dart';
import 'package:online_learning_application/widget/main_appbar.dart';
import 'package:online_learning_application/widget/utils.dart';

import '../routes.dart';
import '../widget/bottombar_search_button.dart';
import '../widget/main_bottombar.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  int selectedChipIndex = 0;

  void selectedChip(int index) {
    setState(() {
      selectedChipIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'Course',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              child: Image(
                image: AssetImage("assets/images/Avatar 01.png"),
                height: 50,
                width: 50,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterSearchBar(
                onSearchTextChange: (text) {

                },
                onFilterTap: () {

                },
              ),
              space(vertical: 8),
              SizedBox(
                height: 120,
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
                        height: 120,
                        width: 200,
                        child: Text(
                          index.toString(),
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              space(vertical: 10),
              Text(
                "Choice your course",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ChoiceChip(
                      label: Text(index.toString()),
                      selected: index == selectedChipIndex,
                      selectedColor: Theme.of(context).primaryColor,
                      disabledColor: custom_gray,
                      labelStyle: index == selectedChipIndex
                          ? Theme.of(context).textTheme.displaySmall
                          : Theme.of(context).textTheme.bodyLarge,
                      onSelected: (value) {
                        if (value) {
                          selectedChip(index);
                        }
                      },
                    );
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CourseCard(
                    title: "Product",
                    desc: "robert",
                    price: "92",
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MainBottomBar(
        selected: 2,
        onItemSelected: (index) {
          Routes.bottomNavigateTo(index, context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomSearchButton(
        onSearchPressed: () {},
      ),
    );
  }
}
