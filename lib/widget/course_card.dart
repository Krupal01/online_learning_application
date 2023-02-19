import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/utils.dart';

class CourseCard extends StatelessWidget {
  final String? title;
  final String? desc;
  final String? price;

  final String? imagePath;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const CourseCard({Key? key , this.onTap , this.title, this.desc, this.imagePath, this.onLongPress,this.price }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image(
                  image: AssetImage(imagePath??"assets/images/Illustration 04.png"),
                  height: 100,
                  width: 100,
                )),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title??"" , style: blackText18,),
                  Text(desc??"" , style: greyText16,),
                  Text("\$${price??""}" , style: primaryText20,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
