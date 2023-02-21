import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/utils.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15),),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Image(image: AssetImage("assets/images/Illustration 07.png"),height: 50, width: 50,),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("person name", style: blackText18,),
                        Text("online / offline" , style: greyText16,),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("04:32 pm" , style: grey300Text12,),
                ),
              ],
            ),
            space(vertical: 5),
            Text("Congratulations on completing the first lesson, keep up the good work!",style: grey300Text16,maxLines: 2,),
            space(vertical: 5),
            ClipRRect(borderRadius: BorderRadius.all(Radius.circular(15)),clipBehavior: Clip.hardEdge,child: Image(image: AssetImage("assets/images/message_image.png"),fit: BoxFit.fill,width: double.infinity, height: 150,)),
          ],
        ),
      ),
    );
  }
}
