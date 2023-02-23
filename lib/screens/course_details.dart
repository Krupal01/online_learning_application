import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_learning_application/widget/buttons.dart';
import 'package:online_learning_application/widget/utils.dart';
import 'package:online_learning_application/widget/video_item_widget.dart';
import 'package:video_player/video_player.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({Key? key}) : super(key: key);

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
  }

  void setVideo(String? url) {
    if (url != null) {
      _controller = VideoPlayerController.network(
        url,
      );
      _controller?.initialize().then((value) => setState(() {
        _controller?.play();
      }));
      _controller?.setLooping(true);
    }

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(_controller != null) {
      print(_controller.toString() + "---" +
          _controller!.value.isInitialized.toString() + "---" +
          _controller!.value.isBuffering.toString());
    }else{
      print("controller is null");
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: custom_pitch,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              alignment: Alignment.topCenter,
              color: custom_pitch,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 20),
                child: (_controller != null && _controller!.value.isInitialized)
                    ? (_controller!.value.isBuffering)
                        ? const CircularProgressIndicator()
                        : AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(_controller!),
                          )
                    : const Image(
                        image: AssetImage(
                          "assets/images/Ads.png",
                        ),
                        height: 180,
                      ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Product Design",
                                  style: blackText18,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "6h 14min",
                                      style: grey300Text12,
                                    ),
                                    Text(
                                      "--",
                                      style: grey300Text12,
                                    ),
                                    Text(
                                      "24 Lessions",
                                      style: grey300Text12,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Text(
                            "\$71.00",
                            style: primaryText20,
                          )
                        ],
                      ),
                      space(vertical: 5),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) => VideoItemWidget(
                            index: index.toString(),
                            onTap: () {
                              setVideo(
                                  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
                            },
                          ),
                          itemCount: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: (){
                                }
                              ,
                              child: Icon(
                                Icons.star_border,
                                color: custom_orange,
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    custom_light_orange),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.all(9)),
                              ),
                            ),
                          ),
                          space(horizontal: 8),
                          Expanded(
                            flex: 2,
                            child: SimpleButton(
                              onPressed: () {},
                              child: Text(
                                "Buy now",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
