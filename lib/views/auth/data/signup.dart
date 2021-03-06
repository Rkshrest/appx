import 'package:flutter/material.dart';

class SignupDataGetter extends StatelessWidget {
  const SignupDataGetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {
            // Get.back();
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
    );
  }
}
