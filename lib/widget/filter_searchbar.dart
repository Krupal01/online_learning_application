import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/utils.dart';

class FilterSearchBar extends StatelessWidget {
  final Function(String text)? onSearchTextChange;
  final VoidCallback? onFilterTap;
  final searchController = TextEditingController();
  FilterSearchBar({Key? key , this.onSearchTextChange , this.onFilterTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15),),
        color: light_pitch
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: TextField(
                onChanged: onSearchTextChange,
                controller: searchController,
                cursorColor: Colors.grey,
                maxLines: 1,
                style: const TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),
                  prefixIcon: Icon(Icons.search , color: icon_gray,),
                  suffixIcon:  IconButton(onPressed: (){
                    searchController.clear();
                  }, icon: const Icon(Icons.cancel),),
                ),
              ),
            ),
            IconButton(onPressed: onFilterTap, icon: Icon(Icons.filter_list , color: icon_gray,),),
          ],
        ),
      ),
    );
  }
}
