import 'package:flutter/material.dart';

class SplashCard extends StatelessWidget {
  final String imagePath, cardTitle, cardDisc;

  const SplashCard(
      {Key? key,
      required this.cardTitle,
      required this.cardDisc,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(margin: const EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imagePath),
              height: 200,
              width: 200,
            ),
            Text(
              cardTitle,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              cardDisc,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
