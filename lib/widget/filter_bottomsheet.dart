import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_learning_application/Constants.dart';
import 'package:online_learning_application/widget/utils.dart';

import 'buttons.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int selectedChipIndex = 0;
  RangeValues _currentPriceRange = RangeValues(0, 10);

  void selectedChip(int index) {
    setState(() {
      selectedChipIndex = index;
    });
  }

  void setPriceRange({required RangeValues currentPriceRange}){
    setState(() {
      _currentPriceRange = currentPriceRange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(right: 40.0),
                  child: Text(
                    "Search Filter",
                    style: blackText24,
                    textAlign: TextAlign.center,
                  ),
                ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Category",
                    style: blackText20,
                  ),
                  Wrap(
                    children: category
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: FilterChip(
                              label: Text(e),
                              onSelected: (value) {
                                selectedChip(category.indexOf(e));
                              },
                              selected: category.indexOf(e) == selectedChipIndex,
                              padding: EdgeInsets.all(8),
                              selectedColor: Theme.of(context).primaryColor,
                              disabledColor: custom_gray,
                              labelStyle: category.indexOf(e) == selectedChipIndex
                                  ? Theme.of(context).textTheme.displaySmall
                                  : Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const Text(
                    "Price",
                    style: blackText20,
                  ),
                  RangeSlider(
                    activeColor: Theme.of(context).primaryColor,
                    inactiveColor: custom_gray,
                    values: _currentPriceRange,
                    max: 100,
                    divisions: 20,
                    labels: RangeLabels(
                      _currentPriceRange.start.round().toString(),
                      _currentPriceRange.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setPriceRange(currentPriceRange: values);
                    },
                  ),
                  const Text(
                    "Duration",
                    style: blackText20,
                  ),
                  Wrap(
                    children: category
                        .map(
                          (e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: FilterChip(
                          label: Text(e),
                          onSelected: (value) {
                            selectedChip(category.indexOf(e));
                          },
                          selected: category.indexOf(e) == selectedChipIndex,
                          padding: EdgeInsets.all(8),
                          selectedColor: Theme.of(context).primaryColor,
                          disabledColor: custom_gray,
                          labelStyle: category.indexOf(e) == selectedChipIndex
                              ? Theme.of(context).textTheme.displaySmall
                              : Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    )
                        .toList(),
                  ),
                  space(vertical: 20),
                  Row(
                    children: [
                      Expanded(
                        child: SimpleWhiteButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Clear",
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child:SimpleButton(
                          onPressed: () {

                          },
                          child: Text(
                            "Apply Filter",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
