import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 400,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Placeholder(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 40,
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
