import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/utils.dart';

class VideoItemWidget extends StatefulWidget {
  String? index , title , period ;
  VoidCallback? onTap;
  VideoItemWidget({Key? key , this.onTap , this.index,this.title ,this.period }) : super(key: key);

  @override
  State<VideoItemWidget> createState() => _VideoItemWidgetState();
}

class _VideoItemWidgetState extends State<VideoItemWidget> {
  bool isPressed = false;

  void changeButtonState(){
    if(widget.onTap != null){
      widget.onTap!();
    }

    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.index ?? "01",
          style: greyText20,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text(
                widget.title ?? "Welcome to the course",
                style: black300Text12,
              ),
              Text(
                widget.period ?? "6:10 mins",
                style: grey300Text12,
              ),
            ]),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            changeButtonState();
          },
          child: Icon(isPressed ? Icons.pause : Icons.play_arrow ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
             CircleBorder()
            ),
            padding: MaterialStateProperty.all(EdgeInsets.all(3)),
            backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
            overlayColor: MaterialStateProperty.all(Colors.white),
          ),
        )
      ],
    );
  }
}
