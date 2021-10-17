import 'package:appx/static.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        title: Text(
          AppInfo.name,
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                "Others like you",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const Text("hi");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
