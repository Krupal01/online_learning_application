import 'package:flutter/material.dart';

import '../routes.dart';
import '../widget/bottombar_search_button.dart';
import '../widget/course_card.dart';
import '../widget/filter_bottomsheet.dart';
import '../widget/filter_searchbar.dart';
import '../widget/main_bottombar.dart';
import '../widget/utils.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedChipIndex = 0;

  void selectedChip(int index) {
    setState(() {
      selectedChipIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new , color: Colors.black,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterSearchBar(
              onSearchTextChange: (text) {},
              onFilterTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  isScrollControlled: true,
                  clipBehavior: Clip.hardEdge,
                  builder: (context) => DraggableScrollableSheet(
                    initialChildSize: 0.50,
                    maxChildSize: 0.50,
                    expand: false,
                    builder: (context, scrollController) =>
                        SingleChildScrollView(
                            controller: scrollController,
                            child: FilterBottomSheet()),
                  ),
                );
              },
            ),
            space(vertical: 8),
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
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CourseCard(
                    title: "Product",
                    desc: "robert",
                    price: "92",
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MainBottomBar(
        selected: 0,
        onItemSelected: (index) {
          Routes.bottomNavigateTo(index, context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomSearchButton(
        onSearchPressed: () => Routes.bottomNavigateTo(5, context),
        selected: true,
      ),
    );
  }
}
